{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Blogger
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The Blogger API provides access to posts, comments and pages of a Blogger blog.
--
-- /See:/ <https://developers.google.com/blogger/docs/3.0/getting_started Blogger API v3 Reference>
module Gogol.Blogger
  ( -- * Configuration
    bloggerService,

    -- * OAuth Scopes
    bloggerScope,
    bloggerReadOnlyScope,

    -- * Resources

    -- ** blogger.blogUserInfos.get
    BloggerBlogUserInfosGetResource,
    newBloggerBlogUserInfosGet,
    BloggerBlogUserInfosGet,

    -- ** blogger.blogs.get
    BloggerBlogsGetResource,
    newBloggerBlogsGet,
    BloggerBlogsGet,

    -- ** blogger.blogs.getByUrl
    BloggerBlogsGetByUrlResource,
    newBloggerBlogsGetByUrl,
    BloggerBlogsGetByUrl,

    -- ** blogger.blogs.listByUser
    BloggerBlogsListByUserResource,
    newBloggerBlogsListByUser,
    BloggerBlogsListByUser,

    -- ** blogger.comments.approve
    BloggerCommentsApproveResource,
    newBloggerCommentsApprove,
    BloggerCommentsApprove,

    -- ** blogger.comments.delete
    BloggerCommentsDeleteResource,
    newBloggerCommentsDelete,
    BloggerCommentsDelete,

    -- ** blogger.comments.get
    BloggerCommentsGetResource,
    newBloggerCommentsGet,
    BloggerCommentsGet,

    -- ** blogger.comments.list
    BloggerCommentsListResource,
    newBloggerCommentsList,
    BloggerCommentsList,

    -- ** blogger.comments.listByBlog
    BloggerCommentsListByBlogResource,
    newBloggerCommentsListByBlog,
    BloggerCommentsListByBlog,

    -- ** blogger.comments.markAsSpam
    BloggerCommentsMarkAsSpamResource,
    newBloggerCommentsMarkAsSpam,
    BloggerCommentsMarkAsSpam,

    -- ** blogger.comments.removeContent
    BloggerCommentsRemoveContentResource,
    newBloggerCommentsRemoveContent,
    BloggerCommentsRemoveContent,

    -- ** blogger.pageViews.get
    BloggerPageViewsGetResource,
    newBloggerPageViewsGet,
    BloggerPageViewsGet,

    -- ** blogger.pages.delete
    BloggerPagesDeleteResource,
    newBloggerPagesDelete,
    BloggerPagesDelete,

    -- ** blogger.pages.get
    BloggerPagesGetResource,
    newBloggerPagesGet,
    BloggerPagesGet,

    -- ** blogger.pages.insert
    BloggerPagesInsertResource,
    newBloggerPagesInsert,
    BloggerPagesInsert,

    -- ** blogger.pages.list
    BloggerPagesListResource,
    newBloggerPagesList,
    BloggerPagesList,

    -- ** blogger.pages.patch
    BloggerPagesPatchResource,
    newBloggerPagesPatch,
    BloggerPagesPatch,

    -- ** blogger.pages.publish
    BloggerPagesPublishResource,
    newBloggerPagesPublish,
    BloggerPagesPublish,

    -- ** blogger.pages.revert
    BloggerPagesRevertResource,
    newBloggerPagesRevert,
    BloggerPagesRevert,

    -- ** blogger.pages.update
    BloggerPagesUpdateResource,
    newBloggerPagesUpdate,
    BloggerPagesUpdate,

    -- ** blogger.postUserInfos.get
    BloggerPostUserInfosGetResource,
    newBloggerPostUserInfosGet,
    BloggerPostUserInfosGet,

    -- ** blogger.postUserInfos.list
    BloggerPostUserInfosListResource,
    newBloggerPostUserInfosList,
    BloggerPostUserInfosList,

    -- ** blogger.posts.delete
    BloggerPostsDeleteResource,
    newBloggerPostsDelete,
    BloggerPostsDelete,

    -- ** blogger.posts.get
    BloggerPostsGetResource,
    newBloggerPostsGet,
    BloggerPostsGet,

    -- ** blogger.posts.getByPath
    BloggerPostsGetByPathResource,
    newBloggerPostsGetByPath,
    BloggerPostsGetByPath,

    -- ** blogger.posts.insert
    BloggerPostsInsertResource,
    newBloggerPostsInsert,
    BloggerPostsInsert,

    -- ** blogger.posts.list
    BloggerPostsListResource,
    newBloggerPostsList,
    BloggerPostsList,

    -- ** blogger.posts.patch
    BloggerPostsPatchResource,
    newBloggerPostsPatch,
    BloggerPostsPatch,

    -- ** blogger.posts.publish
    BloggerPostsPublishResource,
    newBloggerPostsPublish,
    BloggerPostsPublish,

    -- ** blogger.posts.revert
    BloggerPostsRevertResource,
    newBloggerPostsRevert,
    BloggerPostsRevert,

    -- ** blogger.posts.search
    BloggerPostsSearchResource,
    newBloggerPostsSearch,
    BloggerPostsSearch,

    -- ** blogger.posts.update
    BloggerPostsUpdateResource,
    newBloggerPostsUpdate,
    BloggerPostsUpdate,

    -- ** blogger.users.get
    BloggerUsersGetResource,
    newBloggerUsersGet,
    BloggerUsersGet,

    -- * Types

    -- ** Xgafv
    Xgafv (..),

    -- ** Blog
    Blog (..),
    newBlog,

    -- ** Blog_Locale
    Blog_Locale (..),
    newBlog_Locale,

    -- ** Blog_Pages
    Blog_Pages (..),
    newBlog_Pages,

    -- ** Blog_Posts
    Blog_Posts (..),
    newBlog_Posts,

    -- ** Blog_Status
    Blog_Status (..),

    -- ** BlogList
    BlogList (..),
    newBlogList,

    -- ** BlogPerUserInfo
    BlogPerUserInfo (..),
    newBlogPerUserInfo,

    -- ** BlogPerUserInfo_Role
    BlogPerUserInfo_Role (..),

    -- ** BlogUserInfo
    BlogUserInfo (..),
    newBlogUserInfo,

    -- ** Comment
    Comment (..),
    newComment,

    -- ** Comment_Author
    Comment_Author (..),
    newComment_Author,

    -- ** Comment_Author_Image
    Comment_Author_Image (..),
    newComment_Author_Image,

    -- ** Comment_Blog
    Comment_Blog (..),
    newComment_Blog,

    -- ** Comment_InReplyTo
    Comment_InReplyTo (..),
    newComment_InReplyTo,

    -- ** Comment_Post
    Comment_Post (..),
    newComment_Post,

    -- ** Comment_Status
    Comment_Status (..),

    -- ** CommentList
    CommentList (..),
    newCommentList,

    -- ** Page
    Page (..),
    newPage,

    -- ** Page_Author
    Page_Author (..),
    newPage_Author,

    -- ** Page_Author_Image
    Page_Author_Image (..),
    newPage_Author_Image,

    -- ** Page_Blog
    Page_Blog (..),
    newPage_Blog,

    -- ** Page_Status
    Page_Status (..),

    -- ** PageList
    PageList (..),
    newPageList,

    -- ** Pageviews
    Pageviews (..),
    newPageviews,

    -- ** Pageviews_CountsItem
    Pageviews_CountsItem (..),
    newPageviews_CountsItem,

    -- ** Pageviews_CountsItem_TimeRange
    Pageviews_CountsItem_TimeRange (..),

    -- ** Post'
    Post' (..),
    newPost,

    -- ** Post_Author
    Post_Author (..),
    newPost_Author,

    -- ** Post_Author_Image
    Post_Author_Image (..),
    newPost_Author_Image,

    -- ** Post_Blog
    Post_Blog (..),
    newPost_Blog,

    -- ** Post_ImagesItem
    Post_ImagesItem (..),
    newPost_ImagesItem,

    -- ** Post_Location
    Post_Location (..),
    newPost_Location,

    -- ** Post_ReaderComments
    Post_ReaderComments (..),

    -- ** Post_Replies
    Post_Replies (..),
    newPost_Replies,

    -- ** Post_Status
    Post_Status (..),

    -- ** PostList
    PostList (..),
    newPostList,

    -- ** PostPerUserInfo
    PostPerUserInfo (..),
    newPostPerUserInfo,

    -- ** PostUserInfo
    PostUserInfo (..),
    newPostUserInfo,

    -- ** PostUserInfosList
    PostUserInfosList (..),
    newPostUserInfosList,

    -- ** User
    User (..),
    newUser,

    -- ** User_Blogs
    User_Blogs (..),
    newUser_Blogs,

    -- ** User_Locale
    User_Locale (..),
    newUser_Locale,

    -- ** BlogsGetView
    BlogsGetView (..),

    -- ** BlogsGetByUrlView
    BlogsGetByUrlView (..),

    -- ** BlogsListByUserRole
    BlogsListByUserRole (..),

    -- ** BlogsListByUserStatus
    BlogsListByUserStatus (..),

    -- ** BlogsListByUserView
    BlogsListByUserView (..),

    -- ** CommentsGetView
    CommentsGetView (..),

    -- ** CommentsListStatus
    CommentsListStatus (..),

    -- ** CommentsListView
    CommentsListView (..),

    -- ** CommentsListByBlogStatus
    CommentsListByBlogStatus (..),

    -- ** PageViewsGetRange
    PageViewsGetRange (..),

    -- ** PagesGetView
    PagesGetView (..),

    -- ** PagesListStatus
    PagesListStatus (..),

    -- ** PagesListView
    PagesListView (..),

    -- ** PostUserInfosListOrderBy
    PostUserInfosListOrderBy (..),

    -- ** PostUserInfosListStatus
    PostUserInfosListStatus (..),

    -- ** PostUserInfosListView
    PostUserInfosListView (..),

    -- ** PostsGetView
    PostsGetView (..),

    -- ** PostsGetByPathView
    PostsGetByPathView (..),

    -- ** PostsListOrderBy
    PostsListOrderBy (..),

    -- ** PostsListStatus
    PostsListStatus (..),

    -- ** PostsListView
    PostsListView (..),

    -- ** PostsSearchOrderBy
    PostsSearchOrderBy (..),
  )
where

import Gogol.Blogger.BlogUserInfos.Get
import Gogol.Blogger.Blogs.Get
import Gogol.Blogger.Blogs.GetByUrl
import Gogol.Blogger.Blogs.ListByUser
import Gogol.Blogger.Comments.Approve
import Gogol.Blogger.Comments.Delete
import Gogol.Blogger.Comments.Get
import Gogol.Blogger.Comments.List
import Gogol.Blogger.Comments.ListByBlog
import Gogol.Blogger.Comments.MarkAsSpam
import Gogol.Blogger.Comments.RemoveContent
import Gogol.Blogger.PageViews.Get
import Gogol.Blogger.Pages.Delete
import Gogol.Blogger.Pages.Get
import Gogol.Blogger.Pages.Insert
import Gogol.Blogger.Pages.List
import Gogol.Blogger.Pages.Patch
import Gogol.Blogger.Pages.Publish
import Gogol.Blogger.Pages.Revert
import Gogol.Blogger.Pages.Update
import Gogol.Blogger.PostUserInfos.Get
import Gogol.Blogger.PostUserInfos.List
import Gogol.Blogger.Posts.Delete
import Gogol.Blogger.Posts.Get
import Gogol.Blogger.Posts.GetByPath
import Gogol.Blogger.Posts.Insert
import Gogol.Blogger.Posts.List
import Gogol.Blogger.Posts.Patch
import Gogol.Blogger.Posts.Publish
import Gogol.Blogger.Posts.Revert
import Gogol.Blogger.Posts.Search
import Gogol.Blogger.Posts.Update
import Gogol.Blogger.Types
import Gogol.Blogger.Users.Get
