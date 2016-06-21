{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE LambdaCase         #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Blogger.Types.Sum
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Blogger.Types.Sum where

import           Network.Google.Prelude

-- | Sort search results
data PostsListOrderBy
    = Published
      -- ^ @published@
      -- Order by the date the post was published
    | Updated
      -- ^ @updated@
      -- Order by the date the post was last updated
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostsListOrderBy

instance FromHttpApiData PostsListOrderBy where
    parseQueryParam = \case
        "published" -> Right Published
        "updated" -> Right Updated
        x -> Left ("Unable to parse PostsListOrderBy from: " <> x)

instance ToHttpApiData PostsListOrderBy where
    toQueryParam = \case
        Published -> "published"
        Updated -> "updated"

instance FromJSON PostsListOrderBy where
    parseJSON = parseJSONText "PostsListOrderBy"

instance ToJSON PostsListOrderBy where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require escalated access.
data PostsListView
    = Admin
      -- ^ @ADMIN@
      -- Admin level detail
    | Author
      -- ^ @AUTHOR@
      -- Author level detail
    | Reader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostsListView

instance FromHttpApiData PostsListView where
    parseQueryParam = \case
        "ADMIN" -> Right Admin
        "AUTHOR" -> Right Author
        "READER" -> Right Reader
        x -> Left ("Unable to parse PostsListView from: " <> x)

instance ToHttpApiData PostsListView where
    toQueryParam = \case
        Admin -> "ADMIN"
        Author -> "AUTHOR"
        Reader -> "READER"

instance FromJSON PostsListView where
    parseJSON = parseJSONText "PostsListView"

instance ToJSON PostsListView where
    toJSON = toJSONText

data PageViewsGetRange
    = PVGR30DAYS
      -- ^ @30DAYS@
      -- Page view counts from the last thirty days.
    | PVGR7DAYS
      -- ^ @7DAYS@
      -- Page view counts from the last seven days.
    | PVGRAll
      -- ^ @all@
      -- Total page view counts from all time.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PageViewsGetRange

instance FromHttpApiData PageViewsGetRange where
    parseQueryParam = \case
        "30DAYS" -> Right PVGR30DAYS
        "7DAYS" -> Right PVGR7DAYS
        "all" -> Right PVGRAll
        x -> Left ("Unable to parse PageViewsGetRange from: " <> x)

instance ToHttpApiData PageViewsGetRange where
    toQueryParam = \case
        PVGR30DAYS -> "30DAYS"
        PVGR7DAYS -> "7DAYS"
        PVGRAll -> "all"

instance FromJSON PageViewsGetRange where
    parseJSON = parseJSONText "PageViewsGetRange"

instance ToJSON PageViewsGetRange where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data CommentsListView
    = CLVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | CLVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | CLVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsListView

instance FromHttpApiData CommentsListView where
    parseQueryParam = \case
        "ADMIN" -> Right CLVAdmin
        "AUTHOR" -> Right CLVAuthor
        "READER" -> Right CLVReader
        x -> Left ("Unable to parse CommentsListView from: " <> x)

instance ToHttpApiData CommentsListView where
    toQueryParam = \case
        CLVAdmin -> "ADMIN"
        CLVAuthor -> "AUTHOR"
        CLVReader -> "READER"

instance FromJSON CommentsListView where
    parseJSON = parseJSONText "CommentsListView"

instance ToJSON CommentsListView where
    toJSON = toJSONText

data PostUserInfosListStatus
    = Draft
      -- ^ @draft@
      -- Draft posts
    | Live
      -- ^ @live@
      -- Published posts
    | Scheduled
      -- ^ @scheduled@
      -- Posts that are scheduled to publish in future.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostUserInfosListStatus

instance FromHttpApiData PostUserInfosListStatus where
    parseQueryParam = \case
        "draft" -> Right Draft
        "live" -> Right Live
        "scheduled" -> Right Scheduled
        x -> Left ("Unable to parse PostUserInfosListStatus from: " <> x)

instance ToHttpApiData PostUserInfosListStatus where
    toQueryParam = \case
        Draft -> "draft"
        Live -> "live"
        Scheduled -> "scheduled"

instance FromJSON PostUserInfosListStatus where
    parseJSON = parseJSONText "PostUserInfosListStatus"

instance ToJSON PostUserInfosListStatus where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data PostsGetView
    = PGVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | PGVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | PGVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostsGetView

instance FromHttpApiData PostsGetView where
    parseQueryParam = \case
        "ADMIN" -> Right PGVAdmin
        "AUTHOR" -> Right PGVAuthor
        "READER" -> Right PGVReader
        x -> Left ("Unable to parse PostsGetView from: " <> x)

instance ToHttpApiData PostsGetView where
    toQueryParam = \case
        PGVAdmin -> "ADMIN"
        PGVAuthor -> "AUTHOR"
        PGVReader -> "READER"

instance FromJSON PostsGetView where
    parseJSON = parseJSONText "PostsGetView"

instance ToJSON PostsGetView where
    toJSON = toJSONText

-- | Sort search results
data PostsSearchOrderBy
    = PSOBPublished
      -- ^ @published@
      -- Order by the date the post was published
    | PSOBUpdated
      -- ^ @updated@
      -- Order by the date the post was last updated
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostsSearchOrderBy

instance FromHttpApiData PostsSearchOrderBy where
    parseQueryParam = \case
        "published" -> Right PSOBPublished
        "updated" -> Right PSOBUpdated
        x -> Left ("Unable to parse PostsSearchOrderBy from: " <> x)

instance ToHttpApiData PostsSearchOrderBy where
    toQueryParam = \case
        PSOBPublished -> "published"
        PSOBUpdated -> "updated"

instance FromJSON PostsSearchOrderBy where
    parseJSON = parseJSONText "PostsSearchOrderBy"

instance ToJSON PostsSearchOrderBy where
    toJSON = toJSONText

data CommentsListByBlogStatus
    = CLBBSEmptied
      -- ^ @emptied@
      -- Comments that have had their content removed
    | CLBBSLive
      -- ^ @live@
      -- Comments that are publicly visible
    | CLBBSPending
      -- ^ @pending@
      -- Comments that are awaiting administrator approval
    | CLBBSSpam
      -- ^ @spam@
      -- Comments marked as spam by the administrator
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsListByBlogStatus

instance FromHttpApiData CommentsListByBlogStatus where
    parseQueryParam = \case
        "emptied" -> Right CLBBSEmptied
        "live" -> Right CLBBSLive
        "pending" -> Right CLBBSPending
        "spam" -> Right CLBBSSpam
        x -> Left ("Unable to parse CommentsListByBlogStatus from: " <> x)

instance ToHttpApiData CommentsListByBlogStatus where
    toQueryParam = \case
        CLBBSEmptied -> "emptied"
        CLBBSLive -> "live"
        CLBBSPending -> "pending"
        CLBBSSpam -> "spam"

instance FromJSON CommentsListByBlogStatus where
    parseJSON = parseJSONText "CommentsListByBlogStatus"

instance ToJSON CommentsListByBlogStatus where
    toJSON = toJSONText

data PagesGetView
    = PAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | PAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | PReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PagesGetView

instance FromHttpApiData PagesGetView where
    parseQueryParam = \case
        "ADMIN" -> Right PAdmin
        "AUTHOR" -> Right PAuthor
        "READER" -> Right PReader
        x -> Left ("Unable to parse PagesGetView from: " <> x)

instance ToHttpApiData PagesGetView where
    toQueryParam = \case
        PAdmin -> "ADMIN"
        PAuthor -> "AUTHOR"
        PReader -> "READER"

instance FromJSON PagesGetView where
    parseJSON = parseJSONText "PagesGetView"

instance ToJSON PagesGetView where
    toJSON = toJSONText

-- | Sort order applied to search results. Default is published.
data PostUserInfosListOrderBy
    = PUILOBPublished
      -- ^ @published@
      -- Order by the date the post was published
    | PUILOBUpdated
      -- ^ @updated@
      -- Order by the date the post was last updated
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostUserInfosListOrderBy

instance FromHttpApiData PostUserInfosListOrderBy where
    parseQueryParam = \case
        "published" -> Right PUILOBPublished
        "updated" -> Right PUILOBUpdated
        x -> Left ("Unable to parse PostUserInfosListOrderBy from: " <> x)

instance ToHttpApiData PostUserInfosListOrderBy where
    toQueryParam = \case
        PUILOBPublished -> "published"
        PUILOBUpdated -> "updated"

instance FromJSON PostUserInfosListOrderBy where
    parseJSON = parseJSONText "PostUserInfosListOrderBy"

instance ToJSON PostUserInfosListOrderBy where
    toJSON = toJSONText

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
data BlogsGetView
    = BGVAdmin
      -- ^ @ADMIN@
      -- Admin level detail.
    | BGVAuthor
      -- ^ @AUTHOR@
      -- Author level detail.
    | BGVReader
      -- ^ @READER@
      -- Reader level detail.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlogsGetView

instance FromHttpApiData BlogsGetView where
    parseQueryParam = \case
        "ADMIN" -> Right BGVAdmin
        "AUTHOR" -> Right BGVAuthor
        "READER" -> Right BGVReader
        x -> Left ("Unable to parse BlogsGetView from: " <> x)

instance ToHttpApiData BlogsGetView where
    toQueryParam = \case
        BGVAdmin -> "ADMIN"
        BGVAuthor -> "AUTHOR"
        BGVReader -> "READER"

instance FromJSON BlogsGetView where
    parseJSON = parseJSONText "BlogsGetView"

instance ToJSON BlogsGetView where
    toJSON = toJSONText

-- | Access level with which to view the blog. Note that some fields require
-- elevated access.
data BlogsGetByURLView
    = BGBUVAdmin
      -- ^ @ADMIN@
      -- Admin level detail.
    | BGBUVAuthor
      -- ^ @AUTHOR@
      -- Author level detail.
    | BGBUVReader
      -- ^ @READER@
      -- Reader level detail.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlogsGetByURLView

instance FromHttpApiData BlogsGetByURLView where
    parseQueryParam = \case
        "ADMIN" -> Right BGBUVAdmin
        "AUTHOR" -> Right BGBUVAuthor
        "READER" -> Right BGBUVReader
        x -> Left ("Unable to parse BlogsGetByURLView from: " <> x)

instance ToHttpApiData BlogsGetByURLView where
    toQueryParam = \case
        BGBUVAdmin -> "ADMIN"
        BGBUVAuthor -> "AUTHOR"
        BGBUVReader -> "READER"

instance FromJSON BlogsGetByURLView where
    parseJSON = parseJSONText "BlogsGetByURLView"

instance ToJSON BlogsGetByURLView where
    toJSON = toJSONText

data CommentsListStatus
    = CLSEmptied
      -- ^ @emptied@
      -- Comments that have had their content removed
    | CLSLive
      -- ^ @live@
      -- Comments that are publicly visible
    | CLSPending
      -- ^ @pending@
      -- Comments that are awaiting administrator approval
    | CLSSpam
      -- ^ @spam@
      -- Comments marked as spam by the administrator
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsListStatus

instance FromHttpApiData CommentsListStatus where
    parseQueryParam = \case
        "emptied" -> Right CLSEmptied
        "live" -> Right CLSLive
        "pending" -> Right CLSPending
        "spam" -> Right CLSSpam
        x -> Left ("Unable to parse CommentsListStatus from: " <> x)

instance ToHttpApiData CommentsListStatus where
    toQueryParam = \case
        CLSEmptied -> "emptied"
        CLSLive -> "live"
        CLSPending -> "pending"
        CLSSpam -> "spam"

instance FromJSON CommentsListStatus where
    parseJSON = parseJSONText "CommentsListStatus"

instance ToJSON CommentsListStatus where
    toJSON = toJSONText

-- | Blog statuses to include in the result (default: Live blogs only). Note
-- that ADMIN access is required to view deleted blogs.
data BlogsListByUserStatus
    = BLBUSDeleted
      -- ^ @DELETED@
      -- Blog has been deleted by an administrator.
    | BLBUSLive
      -- ^ @LIVE@
      -- Blog is currently live.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlogsListByUserStatus

instance FromHttpApiData BlogsListByUserStatus where
    parseQueryParam = \case
        "DELETED" -> Right BLBUSDeleted
        "LIVE" -> Right BLBUSLive
        x -> Left ("Unable to parse BlogsListByUserStatus from: " <> x)

instance ToHttpApiData BlogsListByUserStatus where
    toQueryParam = \case
        BLBUSDeleted -> "DELETED"
        BLBUSLive -> "LIVE"

instance FromJSON BlogsListByUserStatus where
    parseJSON = parseJSONText "BlogsListByUserStatus"

instance ToJSON BlogsListByUserStatus where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data PagesListView
    = PLVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | PLVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | PLVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PagesListView

instance FromHttpApiData PagesListView where
    parseQueryParam = \case
        "ADMIN" -> Right PLVAdmin
        "AUTHOR" -> Right PLVAuthor
        "READER" -> Right PLVReader
        x -> Left ("Unable to parse PagesListView from: " <> x)

instance ToHttpApiData PagesListView where
    toQueryParam = \case
        PLVAdmin -> "ADMIN"
        PLVAuthor -> "AUTHOR"
        PLVReader -> "READER"

instance FromJSON PagesListView where
    parseJSON = parseJSONText "PagesListView"

instance ToJSON PagesListView where
    toJSON = toJSONText

-- | Statuses to include in the results.
data PostsListStatus
    = PLSDraft
      -- ^ @draft@
      -- Draft (non-published) posts.
    | PLSLive
      -- ^ @live@
      -- Published posts
    | PLSScheduled
      -- ^ @scheduled@
      -- Posts that are scheduled to publish in the future.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostsListStatus

instance FromHttpApiData PostsListStatus where
    parseQueryParam = \case
        "draft" -> Right PLSDraft
        "live" -> Right PLSLive
        "scheduled" -> Right PLSScheduled
        x -> Left ("Unable to parse PostsListStatus from: " <> x)

instance ToHttpApiData PostsListStatus where
    toQueryParam = \case
        PLSDraft -> "draft"
        PLSLive -> "live"
        PLSScheduled -> "scheduled"

instance FromJSON PostsListStatus where
    parseJSON = parseJSONText "PostsListStatus"

instance ToJSON PostsListStatus where
    toJSON = toJSONText

-- | Access level with which to view the blogs. Note that some fields require
-- elevated access.
data BlogsListByUserView
    = BLBUVAdmin
      -- ^ @ADMIN@
      -- Admin level detail.
    | BLBUVAuthor
      -- ^ @AUTHOR@
      -- Author level detail.
    | BLBUVReader
      -- ^ @READER@
      -- Reader level detail.
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlogsListByUserView

instance FromHttpApiData BlogsListByUserView where
    parseQueryParam = \case
        "ADMIN" -> Right BLBUVAdmin
        "AUTHOR" -> Right BLBUVAuthor
        "READER" -> Right BLBUVReader
        x -> Left ("Unable to parse BlogsListByUserView from: " <> x)

instance ToHttpApiData BlogsListByUserView where
    toQueryParam = \case
        BLBUVAdmin -> "ADMIN"
        BLBUVAuthor -> "AUTHOR"
        BLBUVReader -> "READER"

instance FromJSON BlogsListByUserView where
    parseJSON = parseJSONText "BlogsListByUserView"

instance ToJSON BlogsListByUserView where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data PostUserInfosListView
    = PUILVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | PUILVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | PUILVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostUserInfosListView

instance FromHttpApiData PostUserInfosListView where
    parseQueryParam = \case
        "ADMIN" -> Right PUILVAdmin
        "AUTHOR" -> Right PUILVAuthor
        "READER" -> Right PUILVReader
        x -> Left ("Unable to parse PostUserInfosListView from: " <> x)

instance ToHttpApiData PostUserInfosListView where
    toQueryParam = \case
        PUILVAdmin -> "ADMIN"
        PUILVAuthor -> "AUTHOR"
        PUILVReader -> "READER"

instance FromJSON PostUserInfosListView where
    parseJSON = parseJSONText "PostUserInfosListView"

instance ToJSON PostUserInfosListView where
    toJSON = toJSONText

-- | Access level for the requested comment (default: READER). Note that some
-- comments will require elevated permissions, for example comments where
-- the parent posts which is in a draft state, or comments that are pending
-- moderation.
data CommentsGetView
    = CGVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | CGVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | CGVReader
      -- ^ @READER@
      -- Admin level detail
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsGetView

instance FromHttpApiData CommentsGetView where
    parseQueryParam = \case
        "ADMIN" -> Right CGVAdmin
        "AUTHOR" -> Right CGVAuthor
        "READER" -> Right CGVReader
        x -> Left ("Unable to parse CommentsGetView from: " <> x)

instance ToHttpApiData CommentsGetView where
    toQueryParam = \case
        CGVAdmin -> "ADMIN"
        CGVAuthor -> "AUTHOR"
        CGVReader -> "READER"

instance FromJSON CommentsGetView where
    parseJSON = parseJSONText "CommentsGetView"

instance ToJSON CommentsGetView where
    toJSON = toJSONText

-- | Access level with which to view the returned result. Note that some
-- fields require elevated access.
data PostsGetByPathView
    = PGBPVAdmin
      -- ^ @ADMIN@
      -- Admin level detail
    | PGBPVAuthor
      -- ^ @AUTHOR@
      -- Author level detail
    | PGBPVReader
      -- ^ @READER@
      -- Reader level detail
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostsGetByPathView

instance FromHttpApiData PostsGetByPathView where
    parseQueryParam = \case
        "ADMIN" -> Right PGBPVAdmin
        "AUTHOR" -> Right PGBPVAuthor
        "READER" -> Right PGBPVReader
        x -> Left ("Unable to parse PostsGetByPathView from: " <> x)

instance ToHttpApiData PostsGetByPathView where
    toQueryParam = \case
        PGBPVAdmin -> "ADMIN"
        PGBPVAuthor -> "AUTHOR"
        PGBPVReader -> "READER"

instance FromJSON PostsGetByPathView where
    parseJSON = parseJSONText "PostsGetByPathView"

instance ToJSON PostsGetByPathView where
    toJSON = toJSONText

data PagesListStatus
    = PDraft
      -- ^ @draft@
      -- Draft (unpublished) Pages
    | PLive
      -- ^ @live@
      -- Pages that are publicly visible
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PagesListStatus

instance FromHttpApiData PagesListStatus where
    parseQueryParam = \case
        "draft" -> Right PDraft
        "live" -> Right PLive
        x -> Left ("Unable to parse PagesListStatus from: " <> x)

instance ToHttpApiData PagesListStatus where
    toQueryParam = \case
        PDraft -> "draft"
        PLive -> "live"

instance FromJSON PagesListStatus where
    parseJSON = parseJSONText "PagesListStatus"

instance ToJSON PagesListStatus where
    toJSON = toJSONText

-- | User access types for blogs to include in the results, e.g. AUTHOR will
-- return blogs where the user has author level access. If no roles are
-- specified, defaults to ADMIN and AUTHOR roles.
data BlogsListByUserRole
    = BLBURAdmin
      -- ^ @ADMIN@
      -- Admin role - Blogs where the user has Admin level access.
    | BLBURAuthor
      -- ^ @AUTHOR@
      -- Author role - Blogs where the user has Author level access.
    | BLBURReader
      -- ^ @READER@
      -- Reader role - Blogs where the user has Reader level access (to a private
      -- blog).
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlogsListByUserRole

instance FromHttpApiData BlogsListByUserRole where
    parseQueryParam = \case
        "ADMIN" -> Right BLBURAdmin
        "AUTHOR" -> Right BLBURAuthor
        "READER" -> Right BLBURReader
        x -> Left ("Unable to parse BlogsListByUserRole from: " <> x)

instance ToHttpApiData BlogsListByUserRole where
    toQueryParam = \case
        BLBURAdmin -> "ADMIN"
        BLBURAuthor -> "AUTHOR"
        BLBURReader -> "READER"

instance FromJSON BlogsListByUserRole where
    parseJSON = parseJSONText "BlogsListByUserRole"

instance ToJSON BlogsListByUserRole where
    toJSON = toJSONText
