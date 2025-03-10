{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.Blogger.Types
-- Copyright   : (c) 2015-2025 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
--               Toni Cebrián <toni@tonicebrian.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Blogger.Types
  ( -- * Configuration
    bloggerService,

    -- * OAuth Scopes
    Blogger'FullControl,
    Blogger'Readonly,

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

    -- ** PostsListSortOption
    PostsListSortOption (..),

    -- ** PostsListStatus
    PostsListStatus (..),

    -- ** PostsListView
    PostsListView (..),

    -- ** PostsSearchOrderBy
    PostsSearchOrderBy (..),
  )
where

import Gogol.Blogger.Internal.Product
import Gogol.Blogger.Internal.Sum
import Gogol.Prelude qualified as Core

-- | Default request referring to version @v3@ of the Blogger API. This contains the host and root path used as a starting point for constructing service requests.
bloggerService :: Core.ServiceConfig
bloggerService =
  Core.defaultService
    (Core.ServiceId "blogger:v3")
    "blogger.googleapis.com"

-- | Manage your Blogger account
type Blogger'FullControl =
  "https://www.googleapis.com/auth/blogger"

-- | View your Blogger account
type Blogger'Readonly =
  "https://www.googleapis.com/auth/blogger.readonly"
