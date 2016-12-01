/* globals Discussion, DiscussionCourseSettings */
(function(define) {
    'use strict';

    define([
        'underscore',
        'jquery',
        'URI',
        'common/js/discussion/utils',
        'common/js/discussion/views/discussion_thread_profile_view',
        'common/js/discussion/discussion',
        'common/js/spec_helpers/discussion_spec_helper',
        'discussion/js/views/discussion_user_profile_view'
    ],
    function(_, $, URI, DiscussionUtil, DiscussionThreadProfileView, Discussion,
        DiscussionSpecHelper, DiscussionUserProfileView) {
        'use strict';

        describe('DiscussionUserProfileView', function() {
            var createDiscussionUserProfileView;
            createDiscussionUserProfileView = function() {
                var discussionUserProfileView,
                    discussion = DiscussionSpecHelper.createTestDiscussion({}),
                    courseSettings = DiscussionSpecHelper.createTestCourseSettings();

                setFixtures('<div class="discussion-user-profile-board"></div>');
                DiscussionSpecHelper.setUnderscoreFixtures();

                discussionUserProfileView = new DiscussionUserProfileView({
                    el: $('.discussion-user-profile-board'),
                    discussion: discussion,
                    courseSettings: courseSettings,
                    sortPreference: null
                });

                return discussionUserProfileView;
            };

            describe('thread list in user profile page', function() {
                it('should render', function() {
                    var discussionUserProfileView = createDiscussionUserProfileView(),
                        threadListView;
                    discussionUserProfileView.render();
                    threadListView = discussionUserProfileView.discussionThreadListView;
                    expect(threadListView.$('.forum-nav-thread-list').length).toBe(1);
                });
            });
        });
    });
}).call(this, define || RequireJS.define);
