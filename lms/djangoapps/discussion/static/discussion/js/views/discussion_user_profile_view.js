(function(define) {
    'use strict';

    define([
        'underscore',
        'jquery',
        'backbone',
        'gettext',
        'URI',
        'edx-ui-toolkit/js/utils/html-utils',
        'common/js/components/utils/view_utils',
        'common/js/discussion/discussion',
        'common/js/discussion/utils',
        'common/js/discussion/views/discussion_thread_profile_view',
        'text!discussion/templates/user-profile.underscore',
        'text!common/templates/discussion/pagination.underscore',
        'common/js/discussion/views/discussion_thread_list_view',
    ],
        function(_, $, Backbone, gettext, URI, HtmlUtils, ViewUtils, Discussion, DiscussionUtil,
                 DiscussionThreadProfileView, userProfileTemplate, paginationTemplate, DiscussionThreadListView) {
            var DiscussionUserProfileView = Backbone.View.extend({
                events: {
                    'click .all-posts-btn': 'navigateToAllThreads'
                },

                initialize: function(options) {
                    this.courseSettings = options.courseSettings;
                    this.discussion = options.discussion;
                    this.mode = 'all';
                    this.listenTo(this.model, 'change', this.render);
                },

                navigateToThread: function(threadId) {
                    var thread = this.discussion.get(threadId);
                    this.threadView = new DiscussionThreadView({
                        el: this.$('.forum-content'),
                        model: thread,
                        mode: 'tab',
                        course_settings: this.courseSettings
                    });
                    this.threadView.render();
                    this.discussionThreadListView.$el.addClass('is-hidden');
                    this.$('.inline-thread').removeClass('is-hidden');
                },

                navigateToAllThreads: function() {
                    // Hide the inline thread section
                    this.$('.inline-thread').addClass('is-hidden');

                    // Delete the thread view
                    this.threadView.$el.empty().off();
                    this.threadView.stopListening();
                    this.threadView = null;

                    // Show the thread list view
                    this.discussionThreadListView.$el.removeClass('is-hidden');

                    // Set focus to thread list item that was saved as active
                    this.discussionThreadListView.$('.is-active').focus();
                },

                render: function() {
                    this.discussionThreadListView = new DiscussionThreadListView({
                        collection: this.discussion,
                        el: this.$('.inline-threads'),
                        courseSettings: this.courseSettings
                    }).render();

                    this.discussionThreadListView.on('thread:selected', _.bind(this.navigateToThread, this));

                    return this;
                }
            });

            return DiscussionUserProfileView;
        });
}).call(this, define || RequireJS.define);
