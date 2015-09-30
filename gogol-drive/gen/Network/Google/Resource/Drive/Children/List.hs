{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Children.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists a folder\'s children.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveChildrenList@.
module Drive.Children.List
    (
    -- * REST Resource
      ChildrenListAPI

    -- * Creating a Request
    , childrenList
    , ChildrenList

    -- * Request Lenses
    , cQuotaUser
    , cPrettyPrint
    , cOrderBy
    , cUserIp
    , cFolderId
    , cQ
    , cKey
    , cPageToken
    , cOauthToken
    , cMaxResults
    , cFields
    , cAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveChildrenList@ which the
-- 'ChildrenList' request conforms to.
type ChildrenListAPI =
     "files" :>
       Capture "folderId" Text :>
         "children" :>
           QueryParam "orderBy" Text :>
             QueryParam "q" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Int32 :>
                   Get '[JSON] ChildList

-- | Lists a folder\'s children.
--
-- /See:/ 'childrenList' smart constructor.
data ChildrenList = ChildrenList
    { _cQuotaUser   :: !(Maybe Text)
    , _cPrettyPrint :: !Bool
    , _cOrderBy     :: !(Maybe Text)
    , _cUserIp      :: !(Maybe Text)
    , _cFolderId    :: !Text
    , _cQ           :: !(Maybe Text)
    , _cKey         :: !(Maybe Text)
    , _cPageToken   :: !(Maybe Text)
    , _cOauthToken  :: !(Maybe Text)
    , _cMaxResults  :: !Int32
    , _cFields      :: !(Maybe Text)
    , _cAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChildrenList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cQuotaUser'
--
-- * 'cPrettyPrint'
--
-- * 'cOrderBy'
--
-- * 'cUserIp'
--
-- * 'cFolderId'
--
-- * 'cQ'
--
-- * 'cKey'
--
-- * 'cPageToken'
--
-- * 'cOauthToken'
--
-- * 'cMaxResults'
--
-- * 'cFields'
--
-- * 'cAlt'
childrenList
    :: Text -- ^ 'folderId'
    -> ChildrenList
childrenList pCFolderId_ =
    ChildrenList
    { _cQuotaUser = Nothing
    , _cPrettyPrint = True
    , _cOrderBy = Nothing
    , _cUserIp = Nothing
    , _cFolderId = pCFolderId_
    , _cQ = Nothing
    , _cKey = Nothing
    , _cPageToken = Nothing
    , _cOauthToken = Nothing
    , _cMaxResults = 100
    , _cFields = Nothing
    , _cAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cQuotaUser :: Lens' ChildrenList' (Maybe Text)
cQuotaUser
  = lens _cQuotaUser (\ s a -> s{_cQuotaUser = a})

-- | Returns response with indentations and line breaks.
cPrettyPrint :: Lens' ChildrenList' Bool
cPrettyPrint
  = lens _cPrettyPrint (\ s a -> s{_cPrettyPrint = a})

-- | A comma-separated list of sort keys. Valid keys are \'createdDate\',
-- \'folder\', \'lastViewedByMeDate\', \'modifiedByMeDate\',
-- \'modifiedDate\', \'quotaBytesUsed\', \'recency\', \'sharedWithMeDate\',
-- \'starred\', and \'title\'. Each key sorts ascending by default, but may
-- be reversed with the \'desc\' modifier. Example usage:
-- ?orderBy=folder,modifiedDate desc,title. Please note that there is a
-- current limitation for users with approximately one million files in
-- which the requested sort order is ignored.
cOrderBy :: Lens' ChildrenList' (Maybe Text)
cOrderBy = lens _cOrderBy (\ s a -> s{_cOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cUserIp :: Lens' ChildrenList' (Maybe Text)
cUserIp = lens _cUserIp (\ s a -> s{_cUserIp = a})

-- | The ID of the folder.
cFolderId :: Lens' ChildrenList' Text
cFolderId
  = lens _cFolderId (\ s a -> s{_cFolderId = a})

-- | Query string for searching children.
cQ :: Lens' ChildrenList' (Maybe Text)
cQ = lens _cQ (\ s a -> s{_cQ = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cKey :: Lens' ChildrenList' (Maybe Text)
cKey = lens _cKey (\ s a -> s{_cKey = a})

-- | Page token for children.
cPageToken :: Lens' ChildrenList' (Maybe Text)
cPageToken
  = lens _cPageToken (\ s a -> s{_cPageToken = a})

-- | OAuth 2.0 token for the current user.
cOauthToken :: Lens' ChildrenList' (Maybe Text)
cOauthToken
  = lens _cOauthToken (\ s a -> s{_cOauthToken = a})

-- | Maximum number of children to return.
cMaxResults :: Lens' ChildrenList' Int32
cMaxResults
  = lens _cMaxResults (\ s a -> s{_cMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
cFields :: Lens' ChildrenList' (Maybe Text)
cFields = lens _cFields (\ s a -> s{_cFields = a})

-- | Data format for the response.
cAlt :: Lens' ChildrenList' Text
cAlt = lens _cAlt (\ s a -> s{_cAlt = a})

instance GoogleRequest ChildrenList' where
        type Rs ChildrenList' = ChildList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u ChildrenList{..}
          = go _cQuotaUser _cPrettyPrint _cOrderBy _cUserIp
              _cFolderId
              _cQ
              _cKey
              _cPageToken
              _cOauthToken
              (Just _cMaxResults)
              _cFields
              _cAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ChildrenListAPI) r
                      u
