{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Drive.Files.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists the user\'s files.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @DriveFilesList@.
module Drive.Files.List
    (
    -- * REST Resource
      FilesListAPI

    -- * Creating a Request
    , filesList
    , FilesList

    -- * Request Lenses
    , flQuotaUser
    , flPrettyPrint
    , flOrderBy
    , flUserIp
    , flQ
    , flKey
    , flSpaces
    , flProjection
    , flCorpus
    , flPageToken
    , flOauthToken
    , flMaxResults
    , flFields
    , flAlt
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @DriveFilesList@ which the
-- 'FilesList' request conforms to.
type FilesListAPI =
     "files" :>
       QueryParam "orderBy" Text :>
         QueryParam "q" Text :>
           QueryParam "spaces" Text :>
             QueryParam "projection" Text :>
               QueryParam "corpus" Text :>
                 QueryParam "pageToken" Text :>
                   QueryParam "maxResults" Int32 :> Get '[JSON] FileList

-- | Lists the user\'s files.
--
-- /See:/ 'filesList' smart constructor.
data FilesList = FilesList
    { _flQuotaUser   :: !(Maybe Text)
    , _flPrettyPrint :: !Bool
    , _flOrderBy     :: !(Maybe Text)
    , _flUserIp      :: !(Maybe Text)
    , _flQ           :: !(Maybe Text)
    , _flKey         :: !(Maybe Text)
    , _flSpaces      :: !(Maybe Text)
    , _flProjection  :: !(Maybe Text)
    , _flCorpus      :: !(Maybe Text)
    , _flPageToken   :: !(Maybe Text)
    , _flOauthToken  :: !(Maybe Text)
    , _flMaxResults  :: !Int32
    , _flFields      :: !(Maybe Text)
    , _flAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flQuotaUser'
--
-- * 'flPrettyPrint'
--
-- * 'flOrderBy'
--
-- * 'flUserIp'
--
-- * 'flQ'
--
-- * 'flKey'
--
-- * 'flSpaces'
--
-- * 'flProjection'
--
-- * 'flCorpus'
--
-- * 'flPageToken'
--
-- * 'flOauthToken'
--
-- * 'flMaxResults'
--
-- * 'flFields'
--
-- * 'flAlt'
filesList
    :: FilesList
filesList =
    FilesList
    { _flQuotaUser = Nothing
    , _flPrettyPrint = True
    , _flOrderBy = Nothing
    , _flUserIp = Nothing
    , _flQ = Nothing
    , _flKey = Nothing
    , _flSpaces = Nothing
    , _flProjection = Nothing
    , _flCorpus = Nothing
    , _flPageToken = Nothing
    , _flOauthToken = Nothing
    , _flMaxResults = 100
    , _flFields = Nothing
    , _flAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
flQuotaUser :: Lens' FilesList' (Maybe Text)
flQuotaUser
  = lens _flQuotaUser (\ s a -> s{_flQuotaUser = a})

-- | Returns response with indentations and line breaks.
flPrettyPrint :: Lens' FilesList' Bool
flPrettyPrint
  = lens _flPrettyPrint
      (\ s a -> s{_flPrettyPrint = a})

-- | A comma-separated list of sort keys. Valid keys are \'createdDate\',
-- \'folder\', \'lastViewedByMeDate\', \'modifiedByMeDate\',
-- \'modifiedDate\', \'quotaBytesUsed\', \'recency\', \'sharedWithMeDate\',
-- \'starred\', and \'title\'. Each key sorts ascending by default, but may
-- be reversed with the \'desc\' modifier. Example usage:
-- ?orderBy=folder,modifiedDate desc,title. Please note that there is a
-- current limitation for users with approximately one million files in
-- which the requested sort order is ignored.
flOrderBy :: Lens' FilesList' (Maybe Text)
flOrderBy
  = lens _flOrderBy (\ s a -> s{_flOrderBy = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
flUserIp :: Lens' FilesList' (Maybe Text)
flUserIp = lens _flUserIp (\ s a -> s{_flUserIp = a})

-- | Query string for searching files.
flQ :: Lens' FilesList' (Maybe Text)
flQ = lens _flQ (\ s a -> s{_flQ = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
flKey :: Lens' FilesList' (Maybe Text)
flKey = lens _flKey (\ s a -> s{_flKey = a})

-- | A comma-separated list of spaces to query. Supported values are
-- \'drive\', \'appDataFolder\' and \'photos\'.
flSpaces :: Lens' FilesList' (Maybe Text)
flSpaces = lens _flSpaces (\ s a -> s{_flSpaces = a})

-- | This parameter is deprecated and has no function.
flProjection :: Lens' FilesList' (Maybe Text)
flProjection
  = lens _flProjection (\ s a -> s{_flProjection = a})

-- | The body of items (files\/documents) to which the query applies.
flCorpus :: Lens' FilesList' (Maybe Text)
flCorpus = lens _flCorpus (\ s a -> s{_flCorpus = a})

-- | Page token for files.
flPageToken :: Lens' FilesList' (Maybe Text)
flPageToken
  = lens _flPageToken (\ s a -> s{_flPageToken = a})

-- | OAuth 2.0 token for the current user.
flOauthToken :: Lens' FilesList' (Maybe Text)
flOauthToken
  = lens _flOauthToken (\ s a -> s{_flOauthToken = a})

-- | Maximum number of files to return.
flMaxResults :: Lens' FilesList' Int32
flMaxResults
  = lens _flMaxResults (\ s a -> s{_flMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
flFields :: Lens' FilesList' (Maybe Text)
flFields = lens _flFields (\ s a -> s{_flFields = a})

-- | Data format for the response.
flAlt :: Lens' FilesList' Text
flAlt = lens _flAlt (\ s a -> s{_flAlt = a})

instance GoogleRequest FilesList' where
        type Rs FilesList' = FileList
        request = requestWithRoute defReq driveURL
        requestWithRoute r u FilesList{..}
          = go _flQuotaUser _flPrettyPrint _flOrderBy _flUserIp
              _flQ
              _flKey
              _flSpaces
              _flProjection
              _flCorpus
              _flPageToken
              _flOauthToken
              (Just _flMaxResults)
              _flFields
              _flAlt
          where go
                  = clientWithRoute (Proxy :: Proxy FilesListAPI) r u
