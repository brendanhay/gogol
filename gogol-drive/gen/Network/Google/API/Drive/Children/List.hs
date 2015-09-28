{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Drive.Children.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a folder\'s children.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.children.list@.
module Network.Google.API.Drive.Children.List
    (
    -- * REST Resource
      ChildrenListAPI

    -- * Creating a Request
    , childrenList'
    , ChildrenList'

    -- * Request Lenses
    , chiQuotaUser
    , chiPrettyPrint
    , chiOrderBy
    , chiUserIp
    , chiFolderId
    , chiQ
    , chiKey
    , chiPageToken
    , chiOauthToken
    , chiMaxResults
    , chiFields
    , chiAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for drive.children.list which the
-- 'ChildrenList'' request conforms to.
type ChildrenListAPI =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "orderBy" Text :>
                 QueryParam "userIp" Text :>
                   QueryParam "q" Text :>
                     QueryParam "key" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "maxResults" Int32 :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Get '[JSON] ChildList

-- | Lists a folder\'s children.
--
-- /See:/ 'childrenList'' smart constructor.
data ChildrenList' = ChildrenList'
    { _chiQuotaUser   :: !(Maybe Text)
    , _chiPrettyPrint :: !Bool
    , _chiOrderBy     :: !(Maybe Text)
    , _chiUserIp      :: !(Maybe Text)
    , _chiFolderId    :: !Text
    , _chiQ           :: !(Maybe Text)
    , _chiKey         :: !(Maybe Text)
    , _chiPageToken   :: !(Maybe Text)
    , _chiOauthToken  :: !(Maybe Text)
    , _chiMaxResults  :: !Int32
    , _chiFields      :: !(Maybe Text)
    , _chiAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chiQuotaUser'
--
-- * 'chiPrettyPrint'
--
-- * 'chiOrderBy'
--
-- * 'chiUserIp'
--
-- * 'chiFolderId'
--
-- * 'chiQ'
--
-- * 'chiKey'
--
-- * 'chiPageToken'
--
-- * 'chiOauthToken'
--
-- * 'chiMaxResults'
--
-- * 'chiFields'
--
-- * 'chiAlt'
childrenList'
    :: Text -- ^ 'folderId'
    -> ChildrenList'
childrenList' pChiFolderId_ =
    ChildrenList'
    { _chiQuotaUser = Nothing
    , _chiPrettyPrint = True
    , _chiOrderBy = Nothing
    , _chiUserIp = Nothing
    , _chiFolderId = pChiFolderId_
    , _chiQ = Nothing
    , _chiKey = Nothing
    , _chiPageToken = Nothing
    , _chiOauthToken = Nothing
    , _chiMaxResults = 100
    , _chiFields = Nothing
    , _chiAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
chiQuotaUser :: Lens' ChildrenList' (Maybe Text)
chiQuotaUser
  = lens _chiQuotaUser (\ s a -> s{_chiQuotaUser = a})

-- | Returns response with indentations and line breaks.
chiPrettyPrint :: Lens' ChildrenList' Bool
chiPrettyPrint
  = lens _chiPrettyPrint
      (\ s a -> s{_chiPrettyPrint = a})

-- | A comma-separated list of sort keys. Valid keys are \'createdDate\',
-- \'folder\', \'lastViewedByMeDate\', \'modifiedByMeDate\',
-- \'modifiedDate\', \'quotaBytesUsed\', \'recency\', \'sharedWithMeDate\',
-- \'starred\', and \'title\'. Each key sorts ascending by default, but may
-- be reversed with the \'desc\' modifier. Example usage:
-- ?orderBy=folder,modifiedDate desc,title. Please note that there is a
-- current limitation for users with approximately one million files in
-- which the requested sort order is ignored.
chiOrderBy :: Lens' ChildrenList' (Maybe Text)
chiOrderBy
  = lens _chiOrderBy (\ s a -> s{_chiOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
chiUserIp :: Lens' ChildrenList' (Maybe Text)
chiUserIp
  = lens _chiUserIp (\ s a -> s{_chiUserIp = a})

-- | The ID of the folder.
chiFolderId :: Lens' ChildrenList' Text
chiFolderId
  = lens _chiFolderId (\ s a -> s{_chiFolderId = a})

-- | Query string for searching children.
chiQ :: Lens' ChildrenList' (Maybe Text)
chiQ = lens _chiQ (\ s a -> s{_chiQ = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
chiKey :: Lens' ChildrenList' (Maybe Text)
chiKey = lens _chiKey (\ s a -> s{_chiKey = a})

-- | Page token for children.
chiPageToken :: Lens' ChildrenList' (Maybe Text)
chiPageToken
  = lens _chiPageToken (\ s a -> s{_chiPageToken = a})

-- | OAuth 2.0 token for the current user.
chiOauthToken :: Lens' ChildrenList' (Maybe Text)
chiOauthToken
  = lens _chiOauthToken
      (\ s a -> s{_chiOauthToken = a})

-- | Maximum number of children to return.
chiMaxResults :: Lens' ChildrenList' Int32
chiMaxResults
  = lens _chiMaxResults
      (\ s a -> s{_chiMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
chiFields :: Lens' ChildrenList' (Maybe Text)
chiFields
  = lens _chiFields (\ s a -> s{_chiFields = a})

-- | Data format for the response.
chiAlt :: Lens' ChildrenList' Alt
chiAlt = lens _chiAlt (\ s a -> s{_chiAlt = a})

instance GoogleRequest ChildrenList' where
        type Rs ChildrenList' = ChildList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChildrenList'{..}
          = go _chiQuotaUser (Just _chiPrettyPrint) _chiOrderBy
              _chiUserIp
              _chiFolderId
              _chiQ
              _chiKey
              _chiPageToken
              _chiOauthToken
              (Just _chiMaxResults)
              _chiFields
              (Just _chiAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ChildrenListAPI) r
                      u
