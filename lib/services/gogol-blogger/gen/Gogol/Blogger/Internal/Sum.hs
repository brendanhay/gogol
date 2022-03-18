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
-- Module      : Gogol.Blogger.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Gogol.Blogger.Internal.Sum
  ( -- * Xgafv
    Xgafv
      ( Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * Blog_Status
    Blog_Status
      ( Blog_Status_Live,
        Blog_Status_Deleted,
        ..
      ),

    -- * BlogPerUserInfo_Role
    BlogPerUserInfo_Role
      ( BlogPerUserInfo_Role_VIEWTYPEUNSPECIFIED,
        BlogPerUserInfo_Role_Reader,
        BlogPerUserInfo_Role_Author,
        BlogPerUserInfo_Role_Admin,
        ..
      ),

    -- * Comment_Status
    Comment_Status
      ( Comment_Status_Live,
        Comment_Status_Emptied,
        Comment_Status_Pending,
        Comment_Status_Spam,
        ..
      ),

    -- * Page_Status
    Page_Status
      ( Page_Status_Live,
        Page_Status_Draft,
        Page_Status_SOFTTRASHED,
        ..
      ),

    -- * Pageviews_CountsItem_TimeRange
    Pageviews_CountsItem_TimeRange
      ( Pageviews_CountsItem_TimeRange_ALLTIME,
        Pageviews_CountsItem_TimeRange_THIRTYDAYS,
        Pageviews_CountsItem_TimeRange_SEVENDAYS,
        ..
      ),

    -- * Post_ReaderComments
    Post_ReaderComments
      ( Post_ReaderComments_Allow,
        Post_ReaderComments_DONTALLOWSHOWEXISTING,
        Post_ReaderComments_DONTALLOWHIDEEXISTING,
        ..
      ),

    -- * Post_Status
    Post_Status
      ( Post_Status_Live,
        Post_Status_Draft,
        Post_Status_Scheduled,
        Post_Status_SOFTTRASHED,
        ..
      ),

    -- * BlogsGetView
    BlogsGetView
      ( BlogsGetView_VIEWTYPEUNSPECIFIED,
        BlogsGetView_Reader,
        BlogsGetView_Author,
        BlogsGetView_Admin,
        ..
      ),

    -- * BlogsGetByUrlView
    BlogsGetByUrlView
      ( BlogsGetByUrlView_VIEWTYPEUNSPECIFIED,
        BlogsGetByUrlView_Reader,
        BlogsGetByUrlView_Author,
        BlogsGetByUrlView_Admin,
        ..
      ),

    -- * BlogsListByUserRole
    BlogsListByUserRole
      ( BlogsListByUserRole_VIEWTYPEUNSPECIFIED,
        BlogsListByUserRole_Reader,
        BlogsListByUserRole_Author,
        BlogsListByUserRole_Admin,
        ..
      ),

    -- * BlogsListByUserStatus
    BlogsListByUserStatus
      ( BlogsListByUserStatus_Live,
        BlogsListByUserStatus_Deleted,
        ..
      ),

    -- * BlogsListByUserView
    BlogsListByUserView
      ( BlogsListByUserView_VIEWTYPEUNSPECIFIED,
        BlogsListByUserView_Reader,
        BlogsListByUserView_Author,
        BlogsListByUserView_Admin,
        ..
      ),

    -- * CommentsGetView
    CommentsGetView
      ( CommentsGetView_VIEWTYPEUNSPECIFIED,
        CommentsGetView_Reader,
        CommentsGetView_Author,
        CommentsGetView_Admin,
        ..
      ),

    -- * CommentsListStatus
    CommentsListStatus
      ( CommentsListStatus_Live,
        CommentsListStatus_Emptied,
        CommentsListStatus_Pending,
        CommentsListStatus_Spam,
        ..
      ),

    -- * CommentsListView
    CommentsListView
      ( CommentsListView_VIEWTYPEUNSPECIFIED,
        CommentsListView_Reader,
        CommentsListView_Author,
        CommentsListView_Admin,
        ..
      ),

    -- * CommentsListByBlogStatus
    CommentsListByBlogStatus
      ( CommentsListByBlogStatus_Live,
        CommentsListByBlogStatus_Emptied,
        CommentsListByBlogStatus_Pending,
        CommentsListByBlogStatus_Spam,
        ..
      ),

    -- * PageViewsGetRange
    PageViewsGetRange
      ( PageViewsGetRange_All,
        PageViewsGetRange_30DAYS,
        PageViewsGetRange_7DAYS,
        ..
      ),

    -- * PagesGetView
    PagesGetView
      ( PagesGetView_VIEWTYPEUNSPECIFIED,
        PagesGetView_Reader,
        PagesGetView_Author,
        PagesGetView_Admin,
        ..
      ),

    -- * PagesListStatus
    PagesListStatus
      ( PagesListStatus_Live,
        PagesListStatus_Draft,
        PagesListStatus_SOFTTRASHED,
        ..
      ),

    -- * PagesListView
    PagesListView
      ( PagesListView_VIEWTYPEUNSPECIFIED,
        PagesListView_Reader,
        PagesListView_Author,
        PagesListView_Admin,
        ..
      ),

    -- * PostUserInfosListOrderBy
    PostUserInfosListOrderBy
      ( PostUserInfosListOrderBy_ORDERBYUNSPECIFIED,
        PostUserInfosListOrderBy_Published,
        PostUserInfosListOrderBy_Updated,
        ..
      ),

    -- * PostUserInfosListStatus
    PostUserInfosListStatus
      ( PostUserInfosListStatus_Live,
        PostUserInfosListStatus_Draft,
        PostUserInfosListStatus_Scheduled,
        PostUserInfosListStatus_SOFTTRASHED,
        ..
      ),

    -- * PostUserInfosListView
    PostUserInfosListView
      ( PostUserInfosListView_VIEWTYPEUNSPECIFIED,
        PostUserInfosListView_Reader,
        PostUserInfosListView_Author,
        PostUserInfosListView_Admin,
        ..
      ),

    -- * PostsGetView
    PostsGetView
      ( PostsGetView_VIEWTYPEUNSPECIFIED,
        PostsGetView_Reader,
        PostsGetView_Author,
        PostsGetView_Admin,
        ..
      ),

    -- * PostsGetByPathView
    PostsGetByPathView
      ( PostsGetByPathView_VIEWTYPEUNSPECIFIED,
        PostsGetByPathView_Reader,
        PostsGetByPathView_Author,
        PostsGetByPathView_Admin,
        ..
      ),

    -- * PostsListOrderBy
    PostsListOrderBy
      ( PostsListOrderBy_ORDERBYUNSPECIFIED,
        PostsListOrderBy_Published,
        PostsListOrderBy_Updated,
        ..
      ),

    -- * PostsListStatus
    PostsListStatus
      ( PostsListStatus_Live,
        PostsListStatus_Draft,
        PostsListStatus_Scheduled,
        PostsListStatus_SOFTTRASHED,
        ..
      ),

    -- * PostsListView
    PostsListView
      ( PostsListView_VIEWTYPEUNSPECIFIED,
        PostsListView_Reader,
        PostsListView_Author,
        PostsListView_Admin,
        ..
      ),

    -- * PostsSearchOrderBy
    PostsSearchOrderBy
      ( PostsSearchOrderBy_ORDERBYUNSPECIFIED,
        PostsSearchOrderBy_Published,
        PostsSearchOrderBy_Updated,
        ..
      ),
  )
where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv {fromXgafv :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv
  #-}

-- | The status of the blog.
newtype Blog_Status = Blog_Status {fromBlog_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Blog_Status_Live :: Blog_Status
pattern Blog_Status_Live = Blog_Status "LIVE"

-- |
pattern Blog_Status_Deleted :: Blog_Status
pattern Blog_Status_Deleted = Blog_Status "DELETED"

{-# COMPLETE
  Blog_Status_Live,
  Blog_Status_Deleted,
  Blog_Status
  #-}

-- | Access permissions that the user has for the blog (ADMIN, AUTHOR, or READER).
newtype BlogPerUserInfo_Role = BlogPerUserInfo_Role {fromBlogPerUserInfo_Role :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern BlogPerUserInfo_Role_VIEWTYPEUNSPECIFIED :: BlogPerUserInfo_Role
pattern BlogPerUserInfo_Role_VIEWTYPEUNSPECIFIED = BlogPerUserInfo_Role "VIEW_TYPE_UNSPECIFIED"

-- |
pattern BlogPerUserInfo_Role_Reader :: BlogPerUserInfo_Role
pattern BlogPerUserInfo_Role_Reader = BlogPerUserInfo_Role "READER"

-- |
pattern BlogPerUserInfo_Role_Author :: BlogPerUserInfo_Role
pattern BlogPerUserInfo_Role_Author = BlogPerUserInfo_Role "AUTHOR"

-- |
pattern BlogPerUserInfo_Role_Admin :: BlogPerUserInfo_Role
pattern BlogPerUserInfo_Role_Admin = BlogPerUserInfo_Role "ADMIN"

{-# COMPLETE
  BlogPerUserInfo_Role_VIEWTYPEUNSPECIFIED,
  BlogPerUserInfo_Role_Reader,
  BlogPerUserInfo_Role_Author,
  BlogPerUserInfo_Role_Admin,
  BlogPerUserInfo_Role
  #-}

-- | The status of the comment (only populated for admin users).
newtype Comment_Status = Comment_Status {fromComment_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Comment_Status_Live :: Comment_Status
pattern Comment_Status_Live = Comment_Status "LIVE"

-- |
pattern Comment_Status_Emptied :: Comment_Status
pattern Comment_Status_Emptied = Comment_Status "EMPTIED"

-- |
pattern Comment_Status_Pending :: Comment_Status
pattern Comment_Status_Pending = Comment_Status "PENDING"

-- |
pattern Comment_Status_Spam :: Comment_Status
pattern Comment_Status_Spam = Comment_Status "SPAM"

{-# COMPLETE
  Comment_Status_Live,
  Comment_Status_Emptied,
  Comment_Status_Pending,
  Comment_Status_Spam,
  Comment_Status
  #-}

-- | The status of the page for admin resources (either LIVE or DRAFT).
newtype Page_Status = Page_Status {fromPage_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Page_Status_Live :: Page_Status
pattern Page_Status_Live = Page_Status "LIVE"

-- |
pattern Page_Status_Draft :: Page_Status
pattern Page_Status_Draft = Page_Status "DRAFT"

-- |
pattern Page_Status_SOFTTRASHED :: Page_Status
pattern Page_Status_SOFTTRASHED = Page_Status "SOFT_TRASHED"

{-# COMPLETE
  Page_Status_Live,
  Page_Status_Draft,
  Page_Status_SOFTTRASHED,
  Page_Status
  #-}

-- | Time range the given count applies to.
newtype Pageviews_CountsItem_TimeRange = Pageviews_CountsItem_TimeRange {fromPageviews_CountsItem_TimeRange :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Pageviews_CountsItem_TimeRange_ALLTIME :: Pageviews_CountsItem_TimeRange
pattern Pageviews_CountsItem_TimeRange_ALLTIME = Pageviews_CountsItem_TimeRange "ALL_TIME"

-- |
pattern Pageviews_CountsItem_TimeRange_THIRTYDAYS :: Pageviews_CountsItem_TimeRange
pattern Pageviews_CountsItem_TimeRange_THIRTYDAYS = Pageviews_CountsItem_TimeRange "THIRTY_DAYS"

-- |
pattern Pageviews_CountsItem_TimeRange_SEVENDAYS :: Pageviews_CountsItem_TimeRange
pattern Pageviews_CountsItem_TimeRange_SEVENDAYS = Pageviews_CountsItem_TimeRange "SEVEN_DAYS"

{-# COMPLETE
  Pageviews_CountsItem_TimeRange_ALLTIME,
  Pageviews_CountsItem_TimeRange_THIRTYDAYS,
  Pageviews_CountsItem_TimeRange_SEVENDAYS,
  Pageviews_CountsItem_TimeRange
  #-}

-- | Comment control and display setting for readers of this post.
newtype Post_ReaderComments = Post_ReaderComments {fromPost_ReaderComments :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Post_ReaderComments_Allow :: Post_ReaderComments
pattern Post_ReaderComments_Allow = Post_ReaderComments "ALLOW"

-- |
pattern Post_ReaderComments_DONTALLOWSHOWEXISTING :: Post_ReaderComments
pattern Post_ReaderComments_DONTALLOWSHOWEXISTING = Post_ReaderComments "DONT_ALLOW_SHOW_EXISTING"

-- |
pattern Post_ReaderComments_DONTALLOWHIDEEXISTING :: Post_ReaderComments
pattern Post_ReaderComments_DONTALLOWHIDEEXISTING = Post_ReaderComments "DONT_ALLOW_HIDE_EXISTING"

{-# COMPLETE
  Post_ReaderComments_Allow,
  Post_ReaderComments_DONTALLOWSHOWEXISTING,
  Post_ReaderComments_DONTALLOWHIDEEXISTING,
  Post_ReaderComments
  #-}

-- | Status of the post. Only set for admin-level requests.
newtype Post_Status = Post_Status {fromPost_Status :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern Post_Status_Live :: Post_Status
pattern Post_Status_Live = Post_Status "LIVE"

-- |
pattern Post_Status_Draft :: Post_Status
pattern Post_Status_Draft = Post_Status "DRAFT"

-- |
pattern Post_Status_Scheduled :: Post_Status
pattern Post_Status_Scheduled = Post_Status "SCHEDULED"

-- |
pattern Post_Status_SOFTTRASHED :: Post_Status
pattern Post_Status_SOFTTRASHED = Post_Status "SOFT_TRASHED"

{-# COMPLETE
  Post_Status_Live,
  Post_Status_Draft,
  Post_Status_Scheduled,
  Post_Status_SOFTTRASHED,
  Post_Status
  #-}

newtype BlogsGetView = BlogsGetView {fromBlogsGetView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern BlogsGetView_VIEWTYPEUNSPECIFIED :: BlogsGetView
pattern BlogsGetView_VIEWTYPEUNSPECIFIED = BlogsGetView "VIEW_TYPE_UNSPECIFIED"

-- |
pattern BlogsGetView_Reader :: BlogsGetView
pattern BlogsGetView_Reader = BlogsGetView "READER"

-- |
pattern BlogsGetView_Author :: BlogsGetView
pattern BlogsGetView_Author = BlogsGetView "AUTHOR"

-- |
pattern BlogsGetView_Admin :: BlogsGetView
pattern BlogsGetView_Admin = BlogsGetView "ADMIN"

{-# COMPLETE
  BlogsGetView_VIEWTYPEUNSPECIFIED,
  BlogsGetView_Reader,
  BlogsGetView_Author,
  BlogsGetView_Admin,
  BlogsGetView
  #-}

newtype BlogsGetByUrlView = BlogsGetByUrlView {fromBlogsGetByUrlView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern BlogsGetByUrlView_VIEWTYPEUNSPECIFIED :: BlogsGetByUrlView
pattern BlogsGetByUrlView_VIEWTYPEUNSPECIFIED = BlogsGetByUrlView "VIEW_TYPE_UNSPECIFIED"

-- |
pattern BlogsGetByUrlView_Reader :: BlogsGetByUrlView
pattern BlogsGetByUrlView_Reader = BlogsGetByUrlView "READER"

-- |
pattern BlogsGetByUrlView_Author :: BlogsGetByUrlView
pattern BlogsGetByUrlView_Author = BlogsGetByUrlView "AUTHOR"

-- |
pattern BlogsGetByUrlView_Admin :: BlogsGetByUrlView
pattern BlogsGetByUrlView_Admin = BlogsGetByUrlView "ADMIN"

{-# COMPLETE
  BlogsGetByUrlView_VIEWTYPEUNSPECIFIED,
  BlogsGetByUrlView_Reader,
  BlogsGetByUrlView_Author,
  BlogsGetByUrlView_Admin,
  BlogsGetByUrlView
  #-}

newtype BlogsListByUserRole = BlogsListByUserRole {fromBlogsListByUserRole :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern BlogsListByUserRole_VIEWTYPEUNSPECIFIED :: BlogsListByUserRole
pattern BlogsListByUserRole_VIEWTYPEUNSPECIFIED = BlogsListByUserRole "VIEW_TYPE_UNSPECIFIED"

-- |
pattern BlogsListByUserRole_Reader :: BlogsListByUserRole
pattern BlogsListByUserRole_Reader = BlogsListByUserRole "READER"

-- |
pattern BlogsListByUserRole_Author :: BlogsListByUserRole
pattern BlogsListByUserRole_Author = BlogsListByUserRole "AUTHOR"

-- |
pattern BlogsListByUserRole_Admin :: BlogsListByUserRole
pattern BlogsListByUserRole_Admin = BlogsListByUserRole "ADMIN"

{-# COMPLETE
  BlogsListByUserRole_VIEWTYPEUNSPECIFIED,
  BlogsListByUserRole_Reader,
  BlogsListByUserRole_Author,
  BlogsListByUserRole_Admin,
  BlogsListByUserRole
  #-}

-- | Default value of status is LIVE.
newtype BlogsListByUserStatus = BlogsListByUserStatus {fromBlogsListByUserStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern BlogsListByUserStatus_Live :: BlogsListByUserStatus
pattern BlogsListByUserStatus_Live = BlogsListByUserStatus "LIVE"

-- |
pattern BlogsListByUserStatus_Deleted :: BlogsListByUserStatus
pattern BlogsListByUserStatus_Deleted = BlogsListByUserStatus "DELETED"

{-# COMPLETE
  BlogsListByUserStatus_Live,
  BlogsListByUserStatus_Deleted,
  BlogsListByUserStatus
  #-}

newtype BlogsListByUserView = BlogsListByUserView {fromBlogsListByUserView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern BlogsListByUserView_VIEWTYPEUNSPECIFIED :: BlogsListByUserView
pattern BlogsListByUserView_VIEWTYPEUNSPECIFIED = BlogsListByUserView "VIEW_TYPE_UNSPECIFIED"

-- |
pattern BlogsListByUserView_Reader :: BlogsListByUserView
pattern BlogsListByUserView_Reader = BlogsListByUserView "READER"

-- |
pattern BlogsListByUserView_Author :: BlogsListByUserView
pattern BlogsListByUserView_Author = BlogsListByUserView "AUTHOR"

-- |
pattern BlogsListByUserView_Admin :: BlogsListByUserView
pattern BlogsListByUserView_Admin = BlogsListByUserView "ADMIN"

{-# COMPLETE
  BlogsListByUserView_VIEWTYPEUNSPECIFIED,
  BlogsListByUserView_Reader,
  BlogsListByUserView_Author,
  BlogsListByUserView_Admin,
  BlogsListByUserView
  #-}

newtype CommentsGetView = CommentsGetView {fromCommentsGetView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern CommentsGetView_VIEWTYPEUNSPECIFIED :: CommentsGetView
pattern CommentsGetView_VIEWTYPEUNSPECIFIED = CommentsGetView "VIEW_TYPE_UNSPECIFIED"

-- |
pattern CommentsGetView_Reader :: CommentsGetView
pattern CommentsGetView_Reader = CommentsGetView "READER"

-- |
pattern CommentsGetView_Author :: CommentsGetView
pattern CommentsGetView_Author = CommentsGetView "AUTHOR"

-- |
pattern CommentsGetView_Admin :: CommentsGetView
pattern CommentsGetView_Admin = CommentsGetView "ADMIN"

{-# COMPLETE
  CommentsGetView_VIEWTYPEUNSPECIFIED,
  CommentsGetView_Reader,
  CommentsGetView_Author,
  CommentsGetView_Admin,
  CommentsGetView
  #-}

newtype CommentsListStatus = CommentsListStatus {fromCommentsListStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern CommentsListStatus_Live :: CommentsListStatus
pattern CommentsListStatus_Live = CommentsListStatus "LIVE"

-- |
pattern CommentsListStatus_Emptied :: CommentsListStatus
pattern CommentsListStatus_Emptied = CommentsListStatus "EMPTIED"

-- |
pattern CommentsListStatus_Pending :: CommentsListStatus
pattern CommentsListStatus_Pending = CommentsListStatus "PENDING"

-- |
pattern CommentsListStatus_Spam :: CommentsListStatus
pattern CommentsListStatus_Spam = CommentsListStatus "SPAM"

{-# COMPLETE
  CommentsListStatus_Live,
  CommentsListStatus_Emptied,
  CommentsListStatus_Pending,
  CommentsListStatus_Spam,
  CommentsListStatus
  #-}

newtype CommentsListView = CommentsListView {fromCommentsListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern CommentsListView_VIEWTYPEUNSPECIFIED :: CommentsListView
pattern CommentsListView_VIEWTYPEUNSPECIFIED = CommentsListView "VIEW_TYPE_UNSPECIFIED"

-- |
pattern CommentsListView_Reader :: CommentsListView
pattern CommentsListView_Reader = CommentsListView "READER"

-- |
pattern CommentsListView_Author :: CommentsListView
pattern CommentsListView_Author = CommentsListView "AUTHOR"

-- |
pattern CommentsListView_Admin :: CommentsListView
pattern CommentsListView_Admin = CommentsListView "ADMIN"

{-# COMPLETE
  CommentsListView_VIEWTYPEUNSPECIFIED,
  CommentsListView_Reader,
  CommentsListView_Author,
  CommentsListView_Admin,
  CommentsListView
  #-}

newtype CommentsListByBlogStatus = CommentsListByBlogStatus {fromCommentsListByBlogStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern CommentsListByBlogStatus_Live :: CommentsListByBlogStatus
pattern CommentsListByBlogStatus_Live = CommentsListByBlogStatus "LIVE"

-- |
pattern CommentsListByBlogStatus_Emptied :: CommentsListByBlogStatus
pattern CommentsListByBlogStatus_Emptied = CommentsListByBlogStatus "EMPTIED"

-- |
pattern CommentsListByBlogStatus_Pending :: CommentsListByBlogStatus
pattern CommentsListByBlogStatus_Pending = CommentsListByBlogStatus "PENDING"

-- |
pattern CommentsListByBlogStatus_Spam :: CommentsListByBlogStatus
pattern CommentsListByBlogStatus_Spam = CommentsListByBlogStatus "SPAM"

{-# COMPLETE
  CommentsListByBlogStatus_Live,
  CommentsListByBlogStatus_Emptied,
  CommentsListByBlogStatus_Pending,
  CommentsListByBlogStatus_Spam,
  CommentsListByBlogStatus
  #-}

newtype PageViewsGetRange = PageViewsGetRange {fromPageViewsGetRange :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PageViewsGetRange_All :: PageViewsGetRange
pattern PageViewsGetRange_All = PageViewsGetRange "all"

-- |
pattern PageViewsGetRange_30DAYS :: PageViewsGetRange
pattern PageViewsGetRange_30DAYS = PageViewsGetRange "30DAYS"

-- |
pattern PageViewsGetRange_7DAYS :: PageViewsGetRange
pattern PageViewsGetRange_7DAYS = PageViewsGetRange "7DAYS"

{-# COMPLETE
  PageViewsGetRange_All,
  PageViewsGetRange_30DAYS,
  PageViewsGetRange_7DAYS,
  PageViewsGetRange
  #-}

newtype PagesGetView = PagesGetView {fromPagesGetView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PagesGetView_VIEWTYPEUNSPECIFIED :: PagesGetView
pattern PagesGetView_VIEWTYPEUNSPECIFIED = PagesGetView "VIEW_TYPE_UNSPECIFIED"

-- |
pattern PagesGetView_Reader :: PagesGetView
pattern PagesGetView_Reader = PagesGetView "READER"

-- |
pattern PagesGetView_Author :: PagesGetView
pattern PagesGetView_Author = PagesGetView "AUTHOR"

-- |
pattern PagesGetView_Admin :: PagesGetView
pattern PagesGetView_Admin = PagesGetView "ADMIN"

{-# COMPLETE
  PagesGetView_VIEWTYPEUNSPECIFIED,
  PagesGetView_Reader,
  PagesGetView_Author,
  PagesGetView_Admin,
  PagesGetView
  #-}

newtype PagesListStatus = PagesListStatus {fromPagesListStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PagesListStatus_Live :: PagesListStatus
pattern PagesListStatus_Live = PagesListStatus "LIVE"

-- |
pattern PagesListStatus_Draft :: PagesListStatus
pattern PagesListStatus_Draft = PagesListStatus "DRAFT"

-- |
pattern PagesListStatus_SOFTTRASHED :: PagesListStatus
pattern PagesListStatus_SOFTTRASHED = PagesListStatus "SOFT_TRASHED"

{-# COMPLETE
  PagesListStatus_Live,
  PagesListStatus_Draft,
  PagesListStatus_SOFTTRASHED,
  PagesListStatus
  #-}

newtype PagesListView = PagesListView {fromPagesListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PagesListView_VIEWTYPEUNSPECIFIED :: PagesListView
pattern PagesListView_VIEWTYPEUNSPECIFIED = PagesListView "VIEW_TYPE_UNSPECIFIED"

-- |
pattern PagesListView_Reader :: PagesListView
pattern PagesListView_Reader = PagesListView "READER"

-- |
pattern PagesListView_Author :: PagesListView
pattern PagesListView_Author = PagesListView "AUTHOR"

-- |
pattern PagesListView_Admin :: PagesListView
pattern PagesListView_Admin = PagesListView "ADMIN"

{-# COMPLETE
  PagesListView_VIEWTYPEUNSPECIFIED,
  PagesListView_Reader,
  PagesListView_Author,
  PagesListView_Admin,
  PagesListView
  #-}

newtype PostUserInfosListOrderBy = PostUserInfosListOrderBy {fromPostUserInfosListOrderBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PostUserInfosListOrderBy_ORDERBYUNSPECIFIED :: PostUserInfosListOrderBy
pattern PostUserInfosListOrderBy_ORDERBYUNSPECIFIED = PostUserInfosListOrderBy "ORDER_BY_UNSPECIFIED"

-- |
pattern PostUserInfosListOrderBy_Published :: PostUserInfosListOrderBy
pattern PostUserInfosListOrderBy_Published = PostUserInfosListOrderBy "PUBLISHED"

-- |
pattern PostUserInfosListOrderBy_Updated :: PostUserInfosListOrderBy
pattern PostUserInfosListOrderBy_Updated = PostUserInfosListOrderBy "UPDATED"

{-# COMPLETE
  PostUserInfosListOrderBy_ORDERBYUNSPECIFIED,
  PostUserInfosListOrderBy_Published,
  PostUserInfosListOrderBy_Updated,
  PostUserInfosListOrderBy
  #-}

newtype PostUserInfosListStatus = PostUserInfosListStatus {fromPostUserInfosListStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PostUserInfosListStatus_Live :: PostUserInfosListStatus
pattern PostUserInfosListStatus_Live = PostUserInfosListStatus "LIVE"

-- |
pattern PostUserInfosListStatus_Draft :: PostUserInfosListStatus
pattern PostUserInfosListStatus_Draft = PostUserInfosListStatus "DRAFT"

-- |
pattern PostUserInfosListStatus_Scheduled :: PostUserInfosListStatus
pattern PostUserInfosListStatus_Scheduled = PostUserInfosListStatus "SCHEDULED"

-- |
pattern PostUserInfosListStatus_SOFTTRASHED :: PostUserInfosListStatus
pattern PostUserInfosListStatus_SOFTTRASHED = PostUserInfosListStatus "SOFT_TRASHED"

{-# COMPLETE
  PostUserInfosListStatus_Live,
  PostUserInfosListStatus_Draft,
  PostUserInfosListStatus_Scheduled,
  PostUserInfosListStatus_SOFTTRASHED,
  PostUserInfosListStatus
  #-}

newtype PostUserInfosListView = PostUserInfosListView {fromPostUserInfosListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PostUserInfosListView_VIEWTYPEUNSPECIFIED :: PostUserInfosListView
pattern PostUserInfosListView_VIEWTYPEUNSPECIFIED = PostUserInfosListView "VIEW_TYPE_UNSPECIFIED"

-- |
pattern PostUserInfosListView_Reader :: PostUserInfosListView
pattern PostUserInfosListView_Reader = PostUserInfosListView "READER"

-- |
pattern PostUserInfosListView_Author :: PostUserInfosListView
pattern PostUserInfosListView_Author = PostUserInfosListView "AUTHOR"

-- |
pattern PostUserInfosListView_Admin :: PostUserInfosListView
pattern PostUserInfosListView_Admin = PostUserInfosListView "ADMIN"

{-# COMPLETE
  PostUserInfosListView_VIEWTYPEUNSPECIFIED,
  PostUserInfosListView_Reader,
  PostUserInfosListView_Author,
  PostUserInfosListView_Admin,
  PostUserInfosListView
  #-}

newtype PostsGetView = PostsGetView {fromPostsGetView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PostsGetView_VIEWTYPEUNSPECIFIED :: PostsGetView
pattern PostsGetView_VIEWTYPEUNSPECIFIED = PostsGetView "VIEW_TYPE_UNSPECIFIED"

-- |
pattern PostsGetView_Reader :: PostsGetView
pattern PostsGetView_Reader = PostsGetView "READER"

-- |
pattern PostsGetView_Author :: PostsGetView
pattern PostsGetView_Author = PostsGetView "AUTHOR"

-- |
pattern PostsGetView_Admin :: PostsGetView
pattern PostsGetView_Admin = PostsGetView "ADMIN"

{-# COMPLETE
  PostsGetView_VIEWTYPEUNSPECIFIED,
  PostsGetView_Reader,
  PostsGetView_Author,
  PostsGetView_Admin,
  PostsGetView
  #-}

newtype PostsGetByPathView = PostsGetByPathView {fromPostsGetByPathView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PostsGetByPathView_VIEWTYPEUNSPECIFIED :: PostsGetByPathView
pattern PostsGetByPathView_VIEWTYPEUNSPECIFIED = PostsGetByPathView "VIEW_TYPE_UNSPECIFIED"

-- |
pattern PostsGetByPathView_Reader :: PostsGetByPathView
pattern PostsGetByPathView_Reader = PostsGetByPathView "READER"

-- |
pattern PostsGetByPathView_Author :: PostsGetByPathView
pattern PostsGetByPathView_Author = PostsGetByPathView "AUTHOR"

-- |
pattern PostsGetByPathView_Admin :: PostsGetByPathView
pattern PostsGetByPathView_Admin = PostsGetByPathView "ADMIN"

{-# COMPLETE
  PostsGetByPathView_VIEWTYPEUNSPECIFIED,
  PostsGetByPathView_Reader,
  PostsGetByPathView_Author,
  PostsGetByPathView_Admin,
  PostsGetByPathView
  #-}

newtype PostsListOrderBy = PostsListOrderBy {fromPostsListOrderBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PostsListOrderBy_ORDERBYUNSPECIFIED :: PostsListOrderBy
pattern PostsListOrderBy_ORDERBYUNSPECIFIED = PostsListOrderBy "ORDER_BY_UNSPECIFIED"

-- |
pattern PostsListOrderBy_Published :: PostsListOrderBy
pattern PostsListOrderBy_Published = PostsListOrderBy "PUBLISHED"

-- |
pattern PostsListOrderBy_Updated :: PostsListOrderBy
pattern PostsListOrderBy_Updated = PostsListOrderBy "UPDATED"

{-# COMPLETE
  PostsListOrderBy_ORDERBYUNSPECIFIED,
  PostsListOrderBy_Published,
  PostsListOrderBy_Updated,
  PostsListOrderBy
  #-}

newtype PostsListStatus = PostsListStatus {fromPostsListStatus :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PostsListStatus_Live :: PostsListStatus
pattern PostsListStatus_Live = PostsListStatus "LIVE"

-- |
pattern PostsListStatus_Draft :: PostsListStatus
pattern PostsListStatus_Draft = PostsListStatus "DRAFT"

-- |
pattern PostsListStatus_Scheduled :: PostsListStatus
pattern PostsListStatus_Scheduled = PostsListStatus "SCHEDULED"

-- |
pattern PostsListStatus_SOFTTRASHED :: PostsListStatus
pattern PostsListStatus_SOFTTRASHED = PostsListStatus "SOFT_TRASHED"

{-# COMPLETE
  PostsListStatus_Live,
  PostsListStatus_Draft,
  PostsListStatus_Scheduled,
  PostsListStatus_SOFTTRASHED,
  PostsListStatus
  #-}

newtype PostsListView = PostsListView {fromPostsListView :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PostsListView_VIEWTYPEUNSPECIFIED :: PostsListView
pattern PostsListView_VIEWTYPEUNSPECIFIED = PostsListView "VIEW_TYPE_UNSPECIFIED"

-- |
pattern PostsListView_Reader :: PostsListView
pattern PostsListView_Reader = PostsListView "READER"

-- |
pattern PostsListView_Author :: PostsListView
pattern PostsListView_Author = PostsListView "AUTHOR"

-- |
pattern PostsListView_Admin :: PostsListView
pattern PostsListView_Admin = PostsListView "ADMIN"

{-# COMPLETE
  PostsListView_VIEWTYPEUNSPECIFIED,
  PostsListView_Reader,
  PostsListView_Author,
  PostsListView_Admin,
  PostsListView
  #-}

newtype PostsSearchOrderBy = PostsSearchOrderBy {fromPostsSearchOrderBy :: Core.Text}
  deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
  deriving newtype
    ( Core.Hashable,
      Core.ToHttpApiData,
      Core.FromHttpApiData,
      Core.ToJSON,
      Core.ToJSONKey,
      Core.FromJSON,
      Core.FromJSONKey
    )

-- |
pattern PostsSearchOrderBy_ORDERBYUNSPECIFIED :: PostsSearchOrderBy
pattern PostsSearchOrderBy_ORDERBYUNSPECIFIED = PostsSearchOrderBy "ORDER_BY_UNSPECIFIED"

-- |
pattern PostsSearchOrderBy_Published :: PostsSearchOrderBy
pattern PostsSearchOrderBy_Published = PostsSearchOrderBy "PUBLISHED"

-- |
pattern PostsSearchOrderBy_Updated :: PostsSearchOrderBy
pattern PostsSearchOrderBy_Updated = PostsSearchOrderBy "UPDATED"

{-# COMPLETE
  PostsSearchOrderBy_ORDERBYUNSPECIFIED,
  PostsSearchOrderBy_Published,
  PostsSearchOrderBy_Updated,
  PostsSearchOrderBy
  #-}
