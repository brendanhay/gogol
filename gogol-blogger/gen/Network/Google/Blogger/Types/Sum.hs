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

import Network.Google.Prelude hiding (Bytes)

-- | Status of the post. Only set for admin-level requests.
data PostStatus
    = Live
      -- ^ @LIVE@
    | Draft
      -- ^ @DRAFT@
    | Scheduled
      -- ^ @SCHEDULED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostStatus

instance FromHttpApiData PostStatus where
    parseQueryParam = \case
        "LIVE" -> Right Live
        "DRAFT" -> Right Draft
        "SCHEDULED" -> Right Scheduled
        x -> Left ("Unable to parse PostStatus from: " <> x)

instance ToHttpApiData PostStatus where
    toQueryParam = \case
        Live -> "LIVE"
        Draft -> "DRAFT"
        Scheduled -> "SCHEDULED"

instance FromJSON PostStatus where
    parseJSON = parseJSONText "PostStatus"

instance ToJSON PostStatus where
    toJSON = toJSONText

data PostsListOrderBy
    = OrderByUnspecified
      -- ^ @ORDER_BY_UNSPECIFIED@
    | Published
      -- ^ @PUBLISHED@
    | Updated
      -- ^ @UPDATED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostsListOrderBy

instance FromHttpApiData PostsListOrderBy where
    parseQueryParam = \case
        "ORDER_BY_UNSPECIFIED" -> Right OrderByUnspecified
        "PUBLISHED" -> Right Published
        "UPDATED" -> Right Updated
        x -> Left ("Unable to parse PostsListOrderBy from: " <> x)

instance ToHttpApiData PostsListOrderBy where
    toQueryParam = \case
        OrderByUnspecified -> "ORDER_BY_UNSPECIFIED"
        Published -> "PUBLISHED"
        Updated -> "UPDATED"

instance FromJSON PostsListOrderBy where
    parseJSON = parseJSONText "PostsListOrderBy"

instance ToJSON PostsListOrderBy where
    toJSON = toJSONText

data PostsListView
    = ViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | Reader
      -- ^ @READER@
    | Author
      -- ^ @AUTHOR@
    | Admin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostsListView

instance FromHttpApiData PostsListView where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right ViewTypeUnspecified
        "READER" -> Right Reader
        "AUTHOR" -> Right Author
        "ADMIN" -> Right Admin
        x -> Left ("Unable to parse PostsListView from: " <> x)

instance ToHttpApiData PostsListView where
    toQueryParam = \case
        ViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        Reader -> "READER"
        Author -> "AUTHOR"
        Admin -> "ADMIN"

instance FromJSON PostsListView where
    parseJSON = parseJSONText "PostsListView"

instance ToJSON PostsListView where
    toJSON = toJSONText

data PageViewsGetRange
    = PVGRAll
      -- ^ @all@
    | PVGR30DAYS
      -- ^ @30DAYS@
    | PVGR7DAYS
      -- ^ @7DAYS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PageViewsGetRange

instance FromHttpApiData PageViewsGetRange where
    parseQueryParam = \case
        "all" -> Right PVGRAll
        "30DAYS" -> Right PVGR30DAYS
        "7DAYS" -> Right PVGR7DAYS
        x -> Left ("Unable to parse PageViewsGetRange from: " <> x)

instance ToHttpApiData PageViewsGetRange where
    toQueryParam = \case
        PVGRAll -> "all"
        PVGR30DAYS -> "30DAYS"
        PVGR7DAYS -> "7DAYS"

instance FromJSON PageViewsGetRange where
    parseJSON = parseJSONText "PageViewsGetRange"

instance ToJSON PageViewsGetRange where
    toJSON = toJSONText

-- | The status of the page for admin resources (either LIVE or DRAFT).
data PageStatus
    = PSLive
      -- ^ @LIVE@
    | PSDraft
      -- ^ @DRAFT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PageStatus

instance FromHttpApiData PageStatus where
    parseQueryParam = \case
        "LIVE" -> Right PSLive
        "DRAFT" -> Right PSDraft
        x -> Left ("Unable to parse PageStatus from: " <> x)

instance ToHttpApiData PageStatus where
    toQueryParam = \case
        PSLive -> "LIVE"
        PSDraft -> "DRAFT"

instance FromJSON PageStatus where
    parseJSON = parseJSONText "PageStatus"

instance ToJSON PageStatus where
    toJSON = toJSONText

data CommentsListView
    = CLVViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | CLVReader
      -- ^ @READER@
    | CLVAuthor
      -- ^ @AUTHOR@
    | CLVAdmin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsListView

instance FromHttpApiData CommentsListView where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right CLVViewTypeUnspecified
        "READER" -> Right CLVReader
        "AUTHOR" -> Right CLVAuthor
        "ADMIN" -> Right CLVAdmin
        x -> Left ("Unable to parse CommentsListView from: " <> x)

instance ToHttpApiData CommentsListView where
    toQueryParam = \case
        CLVViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        CLVReader -> "READER"
        CLVAuthor -> "AUTHOR"
        CLVAdmin -> "ADMIN"

instance FromJSON CommentsListView where
    parseJSON = parseJSONText "CommentsListView"

instance ToJSON CommentsListView where
    toJSON = toJSONText

data PostUserInfosListStatus
    = PUILSLive
      -- ^ @LIVE@
    | PUILSDraft
      -- ^ @DRAFT@
    | PUILSScheduled
      -- ^ @SCHEDULED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostUserInfosListStatus

instance FromHttpApiData PostUserInfosListStatus where
    parseQueryParam = \case
        "LIVE" -> Right PUILSLive
        "DRAFT" -> Right PUILSDraft
        "SCHEDULED" -> Right PUILSScheduled
        x -> Left ("Unable to parse PostUserInfosListStatus from: " <> x)

instance ToHttpApiData PostUserInfosListStatus where
    toQueryParam = \case
        PUILSLive -> "LIVE"
        PUILSDraft -> "DRAFT"
        PUILSScheduled -> "SCHEDULED"

instance FromJSON PostUserInfosListStatus where
    parseJSON = parseJSONText "PostUserInfosListStatus"

instance ToJSON PostUserInfosListStatus where
    toJSON = toJSONText

-- | Comment control and display setting for readers of this post.
data PostReaderComments
    = Allow
      -- ^ @ALLOW@
    | DontAllowShowExisting
      -- ^ @DONT_ALLOW_SHOW_EXISTING@
    | DontAllowHideExisting
      -- ^ @DONT_ALLOW_HIDE_EXISTING@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostReaderComments

instance FromHttpApiData PostReaderComments where
    parseQueryParam = \case
        "ALLOW" -> Right Allow
        "DONT_ALLOW_SHOW_EXISTING" -> Right DontAllowShowExisting
        "DONT_ALLOW_HIDE_EXISTING" -> Right DontAllowHideExisting
        x -> Left ("Unable to parse PostReaderComments from: " <> x)

instance ToHttpApiData PostReaderComments where
    toQueryParam = \case
        Allow -> "ALLOW"
        DontAllowShowExisting -> "DONT_ALLOW_SHOW_EXISTING"
        DontAllowHideExisting -> "DONT_ALLOW_HIDE_EXISTING"

instance FromJSON PostReaderComments where
    parseJSON = parseJSONText "PostReaderComments"

instance ToJSON PostReaderComments where
    toJSON = toJSONText

data PostsGetView
    = PGVViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | PGVReader
      -- ^ @READER@
    | PGVAuthor
      -- ^ @AUTHOR@
    | PGVAdmin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostsGetView

instance FromHttpApiData PostsGetView where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right PGVViewTypeUnspecified
        "READER" -> Right PGVReader
        "AUTHOR" -> Right PGVAuthor
        "ADMIN" -> Right PGVAdmin
        x -> Left ("Unable to parse PostsGetView from: " <> x)

instance ToHttpApiData PostsGetView where
    toQueryParam = \case
        PGVViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        PGVReader -> "READER"
        PGVAuthor -> "AUTHOR"
        PGVAdmin -> "ADMIN"

instance FromJSON PostsGetView where
    parseJSON = parseJSONText "PostsGetView"

instance ToJSON PostsGetView where
    toJSON = toJSONText

data PostsSearchOrderBy
    = PSOBOrderByUnspecified
      -- ^ @ORDER_BY_UNSPECIFIED@
    | PSOBPublished
      -- ^ @PUBLISHED@
    | PSOBUpdated
      -- ^ @UPDATED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostsSearchOrderBy

instance FromHttpApiData PostsSearchOrderBy where
    parseQueryParam = \case
        "ORDER_BY_UNSPECIFIED" -> Right PSOBOrderByUnspecified
        "PUBLISHED" -> Right PSOBPublished
        "UPDATED" -> Right PSOBUpdated
        x -> Left ("Unable to parse PostsSearchOrderBy from: " <> x)

instance ToHttpApiData PostsSearchOrderBy where
    toQueryParam = \case
        PSOBOrderByUnspecified -> "ORDER_BY_UNSPECIFIED"
        PSOBPublished -> "PUBLISHED"
        PSOBUpdated -> "UPDATED"

instance FromJSON PostsSearchOrderBy where
    parseJSON = parseJSONText "PostsSearchOrderBy"

instance ToJSON PostsSearchOrderBy where
    toJSON = toJSONText

data CommentsListByBlogStatus
    = CLBBSLive
      -- ^ @LIVE@
    | CLBBSEmptied
      -- ^ @EMPTIED@
    | CLBBSPending
      -- ^ @PENDING@
    | CLBBSSpam
      -- ^ @SPAM@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsListByBlogStatus

instance FromHttpApiData CommentsListByBlogStatus where
    parseQueryParam = \case
        "LIVE" -> Right CLBBSLive
        "EMPTIED" -> Right CLBBSEmptied
        "PENDING" -> Right CLBBSPending
        "SPAM" -> Right CLBBSSpam
        x -> Left ("Unable to parse CommentsListByBlogStatus from: " <> x)

instance ToHttpApiData CommentsListByBlogStatus where
    toQueryParam = \case
        CLBBSLive -> "LIVE"
        CLBBSEmptied -> "EMPTIED"
        CLBBSPending -> "PENDING"
        CLBBSSpam -> "SPAM"

instance FromJSON CommentsListByBlogStatus where
    parseJSON = parseJSONText "CommentsListByBlogStatus"

instance ToJSON CommentsListByBlogStatus where
    toJSON = toJSONText

data PagesGetView
    = PViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | PReader
      -- ^ @READER@
    | PAuthor
      -- ^ @AUTHOR@
    | PAdmin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PagesGetView

instance FromHttpApiData PagesGetView where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right PViewTypeUnspecified
        "READER" -> Right PReader
        "AUTHOR" -> Right PAuthor
        "ADMIN" -> Right PAdmin
        x -> Left ("Unable to parse PagesGetView from: " <> x)

instance ToHttpApiData PagesGetView where
    toQueryParam = \case
        PViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        PReader -> "READER"
        PAuthor -> "AUTHOR"
        PAdmin -> "ADMIN"

instance FromJSON PagesGetView where
    parseJSON = parseJSONText "PagesGetView"

instance ToJSON PagesGetView where
    toJSON = toJSONText

data PostUserInfosListOrderBy
    = PUILOBOrderByUnspecified
      -- ^ @ORDER_BY_UNSPECIFIED@
    | PUILOBPublished
      -- ^ @PUBLISHED@
    | PUILOBUpdated
      -- ^ @UPDATED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostUserInfosListOrderBy

instance FromHttpApiData PostUserInfosListOrderBy where
    parseQueryParam = \case
        "ORDER_BY_UNSPECIFIED" -> Right PUILOBOrderByUnspecified
        "PUBLISHED" -> Right PUILOBPublished
        "UPDATED" -> Right PUILOBUpdated
        x -> Left ("Unable to parse PostUserInfosListOrderBy from: " <> x)

instance ToHttpApiData PostUserInfosListOrderBy where
    toQueryParam = \case
        PUILOBOrderByUnspecified -> "ORDER_BY_UNSPECIFIED"
        PUILOBPublished -> "PUBLISHED"
        PUILOBUpdated -> "UPDATED"

instance FromJSON PostUserInfosListOrderBy where
    parseJSON = parseJSONText "PostUserInfosListOrderBy"

instance ToJSON PostUserInfosListOrderBy where
    toJSON = toJSONText

data BlogsGetView
    = BGVViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | BGVReader
      -- ^ @READER@
    | BGVAuthor
      -- ^ @AUTHOR@
    | BGVAdmin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlogsGetView

instance FromHttpApiData BlogsGetView where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right BGVViewTypeUnspecified
        "READER" -> Right BGVReader
        "AUTHOR" -> Right BGVAuthor
        "ADMIN" -> Right BGVAdmin
        x -> Left ("Unable to parse BlogsGetView from: " <> x)

instance ToHttpApiData BlogsGetView where
    toQueryParam = \case
        BGVViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        BGVReader -> "READER"
        BGVAuthor -> "AUTHOR"
        BGVAdmin -> "ADMIN"

instance FromJSON BlogsGetView where
    parseJSON = parseJSONText "BlogsGetView"

instance ToJSON BlogsGetView where
    toJSON = toJSONText

data BlogsGetByURLView
    = BGBUVViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | BGBUVReader
      -- ^ @READER@
    | BGBUVAuthor
      -- ^ @AUTHOR@
    | BGBUVAdmin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlogsGetByURLView

instance FromHttpApiData BlogsGetByURLView where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right BGBUVViewTypeUnspecified
        "READER" -> Right BGBUVReader
        "AUTHOR" -> Right BGBUVAuthor
        "ADMIN" -> Right BGBUVAdmin
        x -> Left ("Unable to parse BlogsGetByURLView from: " <> x)

instance ToHttpApiData BlogsGetByURLView where
    toQueryParam = \case
        BGBUVViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        BGBUVReader -> "READER"
        BGBUVAuthor -> "AUTHOR"
        BGBUVAdmin -> "ADMIN"

instance FromJSON BlogsGetByURLView where
    parseJSON = parseJSONText "BlogsGetByURLView"

instance ToJSON BlogsGetByURLView where
    toJSON = toJSONText

data CommentsListStatus
    = CLSLive
      -- ^ @LIVE@
    | CLSEmptied
      -- ^ @EMPTIED@
    | CLSPending
      -- ^ @PENDING@
    | CLSSpam
      -- ^ @SPAM@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsListStatus

instance FromHttpApiData CommentsListStatus where
    parseQueryParam = \case
        "LIVE" -> Right CLSLive
        "EMPTIED" -> Right CLSEmptied
        "PENDING" -> Right CLSPending
        "SPAM" -> Right CLSSpam
        x -> Left ("Unable to parse CommentsListStatus from: " <> x)

instance ToHttpApiData CommentsListStatus where
    toQueryParam = \case
        CLSLive -> "LIVE"
        CLSEmptied -> "EMPTIED"
        CLSPending -> "PENDING"
        CLSSpam -> "SPAM"

instance FromJSON CommentsListStatus where
    parseJSON = parseJSONText "CommentsListStatus"

instance ToJSON CommentsListStatus where
    toJSON = toJSONText

-- | Default value of status is LIVE.
data BlogsListByUserStatus
    = BLBUSLive
      -- ^ @LIVE@
    | BLBUSDeleted
      -- ^ @DELETED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlogsListByUserStatus

instance FromHttpApiData BlogsListByUserStatus where
    parseQueryParam = \case
        "LIVE" -> Right BLBUSLive
        "DELETED" -> Right BLBUSDeleted
        x -> Left ("Unable to parse BlogsListByUserStatus from: " <> x)

instance ToHttpApiData BlogsListByUserStatus where
    toQueryParam = \case
        BLBUSLive -> "LIVE"
        BLBUSDeleted -> "DELETED"

instance FromJSON BlogsListByUserStatus where
    parseJSON = parseJSONText "BlogsListByUserStatus"

instance ToJSON BlogsListByUserStatus where
    toJSON = toJSONText

-- | The status of the comment (only populated for admin users).
data CommentStatus
    = CSLive
      -- ^ @LIVE@
    | CSEmptied
      -- ^ @EMPTIED@
    | CSPending
      -- ^ @PENDING@
    | CSSpam
      -- ^ @SPAM@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentStatus

instance FromHttpApiData CommentStatus where
    parseQueryParam = \case
        "LIVE" -> Right CSLive
        "EMPTIED" -> Right CSEmptied
        "PENDING" -> Right CSPending
        "SPAM" -> Right CSSpam
        x -> Left ("Unable to parse CommentStatus from: " <> x)

instance ToHttpApiData CommentStatus where
    toQueryParam = \case
        CSLive -> "LIVE"
        CSEmptied -> "EMPTIED"
        CSPending -> "PENDING"
        CSSpam -> "SPAM"

instance FromJSON CommentStatus where
    parseJSON = parseJSONText "CommentStatus"

instance ToJSON CommentStatus where
    toJSON = toJSONText

data PagesListView
    = PLVViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | PLVReader
      -- ^ @READER@
    | PLVAuthor
      -- ^ @AUTHOR@
    | PLVAdmin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PagesListView

instance FromHttpApiData PagesListView where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right PLVViewTypeUnspecified
        "READER" -> Right PLVReader
        "AUTHOR" -> Right PLVAuthor
        "ADMIN" -> Right PLVAdmin
        x -> Left ("Unable to parse PagesListView from: " <> x)

instance ToHttpApiData PagesListView where
    toQueryParam = \case
        PLVViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        PLVReader -> "READER"
        PLVAuthor -> "AUTHOR"
        PLVAdmin -> "ADMIN"

instance FromJSON PagesListView where
    parseJSON = parseJSONText "PagesListView"

instance ToJSON PagesListView where
    toJSON = toJSONText

-- | Time range the given count applies to.
data PageviewsCountsItemTimeRange
    = AllTime
      -- ^ @ALL_TIME@
    | ThirtyDays
      -- ^ @THIRTY_DAYS@
    | SevenDays
      -- ^ @SEVEN_DAYS@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PageviewsCountsItemTimeRange

instance FromHttpApiData PageviewsCountsItemTimeRange where
    parseQueryParam = \case
        "ALL_TIME" -> Right AllTime
        "THIRTY_DAYS" -> Right ThirtyDays
        "SEVEN_DAYS" -> Right SevenDays
        x -> Left ("Unable to parse PageviewsCountsItemTimeRange from: " <> x)

instance ToHttpApiData PageviewsCountsItemTimeRange where
    toQueryParam = \case
        AllTime -> "ALL_TIME"
        ThirtyDays -> "THIRTY_DAYS"
        SevenDays -> "SEVEN_DAYS"

instance FromJSON PageviewsCountsItemTimeRange where
    parseJSON = parseJSONText "PageviewsCountsItemTimeRange"

instance ToJSON PageviewsCountsItemTimeRange where
    toJSON = toJSONText

-- | The status of the blog.
data BlogStatus
    = BSLive
      -- ^ @LIVE@
    | BSDeleted
      -- ^ @DELETED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlogStatus

instance FromHttpApiData BlogStatus where
    parseQueryParam = \case
        "LIVE" -> Right BSLive
        "DELETED" -> Right BSDeleted
        x -> Left ("Unable to parse BlogStatus from: " <> x)

instance ToHttpApiData BlogStatus where
    toQueryParam = \case
        BSLive -> "LIVE"
        BSDeleted -> "DELETED"

instance FromJSON BlogStatus where
    parseJSON = parseJSONText "BlogStatus"

instance ToJSON BlogStatus where
    toJSON = toJSONText

-- | V1 error format.
data Xgafv
    = X1
      -- ^ @1@
      -- v1 error format
    | X2
      -- ^ @2@
      -- v2 error format
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable Xgafv

instance FromHttpApiData Xgafv where
    parseQueryParam = \case
        "1" -> Right X1
        "2" -> Right X2
        x -> Left ("Unable to parse Xgafv from: " <> x)

instance ToHttpApiData Xgafv where
    toQueryParam = \case
        X1 -> "1"
        X2 -> "2"

instance FromJSON Xgafv where
    parseJSON = parseJSONText "Xgafv"

instance ToJSON Xgafv where
    toJSON = toJSONText

-- | Access permissions that the user has for the blog (ADMIN, AUTHOR, or
-- READER).
data BlogPerUserInfoRole
    = BPUIRViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | BPUIRReader
      -- ^ @READER@
    | BPUIRAuthor
      -- ^ @AUTHOR@
    | BPUIRAdmin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlogPerUserInfoRole

instance FromHttpApiData BlogPerUserInfoRole where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right BPUIRViewTypeUnspecified
        "READER" -> Right BPUIRReader
        "AUTHOR" -> Right BPUIRAuthor
        "ADMIN" -> Right BPUIRAdmin
        x -> Left ("Unable to parse BlogPerUserInfoRole from: " <> x)

instance ToHttpApiData BlogPerUserInfoRole where
    toQueryParam = \case
        BPUIRViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        BPUIRReader -> "READER"
        BPUIRAuthor -> "AUTHOR"
        BPUIRAdmin -> "ADMIN"

instance FromJSON BlogPerUserInfoRole where
    parseJSON = parseJSONText "BlogPerUserInfoRole"

instance ToJSON BlogPerUserInfoRole where
    toJSON = toJSONText

data PostsListStatus
    = PLSLive
      -- ^ @LIVE@
    | PLSDraft
      -- ^ @DRAFT@
    | PLSScheduled
      -- ^ @SCHEDULED@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostsListStatus

instance FromHttpApiData PostsListStatus where
    parseQueryParam = \case
        "LIVE" -> Right PLSLive
        "DRAFT" -> Right PLSDraft
        "SCHEDULED" -> Right PLSScheduled
        x -> Left ("Unable to parse PostsListStatus from: " <> x)

instance ToHttpApiData PostsListStatus where
    toQueryParam = \case
        PLSLive -> "LIVE"
        PLSDraft -> "DRAFT"
        PLSScheduled -> "SCHEDULED"

instance FromJSON PostsListStatus where
    parseJSON = parseJSONText "PostsListStatus"

instance ToJSON PostsListStatus where
    toJSON = toJSONText

data BlogsListByUserView
    = BLBUVViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | BLBUVReader
      -- ^ @READER@
    | BLBUVAuthor
      -- ^ @AUTHOR@
    | BLBUVAdmin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlogsListByUserView

instance FromHttpApiData BlogsListByUserView where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right BLBUVViewTypeUnspecified
        "READER" -> Right BLBUVReader
        "AUTHOR" -> Right BLBUVAuthor
        "ADMIN" -> Right BLBUVAdmin
        x -> Left ("Unable to parse BlogsListByUserView from: " <> x)

instance ToHttpApiData BlogsListByUserView where
    toQueryParam = \case
        BLBUVViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        BLBUVReader -> "READER"
        BLBUVAuthor -> "AUTHOR"
        BLBUVAdmin -> "ADMIN"

instance FromJSON BlogsListByUserView where
    parseJSON = parseJSONText "BlogsListByUserView"

instance ToJSON BlogsListByUserView where
    toJSON = toJSONText

data PostUserInfosListView
    = PUILVViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | PUILVReader
      -- ^ @READER@
    | PUILVAuthor
      -- ^ @AUTHOR@
    | PUILVAdmin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostUserInfosListView

instance FromHttpApiData PostUserInfosListView where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right PUILVViewTypeUnspecified
        "READER" -> Right PUILVReader
        "AUTHOR" -> Right PUILVAuthor
        "ADMIN" -> Right PUILVAdmin
        x -> Left ("Unable to parse PostUserInfosListView from: " <> x)

instance ToHttpApiData PostUserInfosListView where
    toQueryParam = \case
        PUILVViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        PUILVReader -> "READER"
        PUILVAuthor -> "AUTHOR"
        PUILVAdmin -> "ADMIN"

instance FromJSON PostUserInfosListView where
    parseJSON = parseJSONText "PostUserInfosListView"

instance ToJSON PostUserInfosListView where
    toJSON = toJSONText

data CommentsGetView
    = CGVViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | CGVReader
      -- ^ @READER@
    | CGVAuthor
      -- ^ @AUTHOR@
    | CGVAdmin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable CommentsGetView

instance FromHttpApiData CommentsGetView where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right CGVViewTypeUnspecified
        "READER" -> Right CGVReader
        "AUTHOR" -> Right CGVAuthor
        "ADMIN" -> Right CGVAdmin
        x -> Left ("Unable to parse CommentsGetView from: " <> x)

instance ToHttpApiData CommentsGetView where
    toQueryParam = \case
        CGVViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        CGVReader -> "READER"
        CGVAuthor -> "AUTHOR"
        CGVAdmin -> "ADMIN"

instance FromJSON CommentsGetView where
    parseJSON = parseJSONText "CommentsGetView"

instance ToJSON CommentsGetView where
    toJSON = toJSONText

data PostsGetByPathView
    = PGBPVViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | PGBPVReader
      -- ^ @READER@
    | PGBPVAuthor
      -- ^ @AUTHOR@
    | PGBPVAdmin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PostsGetByPathView

instance FromHttpApiData PostsGetByPathView where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right PGBPVViewTypeUnspecified
        "READER" -> Right PGBPVReader
        "AUTHOR" -> Right PGBPVAuthor
        "ADMIN" -> Right PGBPVAdmin
        x -> Left ("Unable to parse PostsGetByPathView from: " <> x)

instance ToHttpApiData PostsGetByPathView where
    toQueryParam = \case
        PGBPVViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        PGBPVReader -> "READER"
        PGBPVAuthor -> "AUTHOR"
        PGBPVAdmin -> "ADMIN"

instance FromJSON PostsGetByPathView where
    parseJSON = parseJSONText "PostsGetByPathView"

instance ToJSON PostsGetByPathView where
    toJSON = toJSONText

data PagesListStatus
    = PLive
      -- ^ @LIVE@
    | PDraft
      -- ^ @DRAFT@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable PagesListStatus

instance FromHttpApiData PagesListStatus where
    parseQueryParam = \case
        "LIVE" -> Right PLive
        "DRAFT" -> Right PDraft
        x -> Left ("Unable to parse PagesListStatus from: " <> x)

instance ToHttpApiData PagesListStatus where
    toQueryParam = \case
        PLive -> "LIVE"
        PDraft -> "DRAFT"

instance FromJSON PagesListStatus where
    parseJSON = parseJSONText "PagesListStatus"

instance ToJSON PagesListStatus where
    toJSON = toJSONText

data BlogsListByUserRole
    = BLBURViewTypeUnspecified
      -- ^ @VIEW_TYPE_UNSPECIFIED@
    | BLBURReader
      -- ^ @READER@
    | BLBURAuthor
      -- ^ @AUTHOR@
    | BLBURAdmin
      -- ^ @ADMIN@
      deriving (Eq, Ord, Enum, Read, Show, Data, Typeable, Generic)

instance Hashable BlogsListByUserRole

instance FromHttpApiData BlogsListByUserRole where
    parseQueryParam = \case
        "VIEW_TYPE_UNSPECIFIED" -> Right BLBURViewTypeUnspecified
        "READER" -> Right BLBURReader
        "AUTHOR" -> Right BLBURAuthor
        "ADMIN" -> Right BLBURAdmin
        x -> Left ("Unable to parse BlogsListByUserRole from: " <> x)

instance ToHttpApiData BlogsListByUserRole where
    toQueryParam = \case
        BLBURViewTypeUnspecified -> "VIEW_TYPE_UNSPECIFIED"
        BLBURReader -> "READER"
        BLBURAuthor -> "AUTHOR"
        BLBURAdmin -> "ADMIN"

instance FromJSON BlogsListByUserRole where
    parseJSON = parseJSONText "BlogsListByUserRole"

instance ToJSON BlogsListByUserRole where
    toJSON = toJSONText
