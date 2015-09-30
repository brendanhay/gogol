{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.Files.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists files for a user profile.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingFilesList@.
module Network.Google.Resource.DFAReporting.Files.List
    (
    -- * REST Resource
      FilesListResource

    -- * Creating a Request
    , filesList'
    , FilesList'

    -- * Request Lenses
    , flQuotaUser
    , flPrettyPrint
    , flUserIp
    , flProfileId
    , flSortOrder
    , flKey
    , flScope
    , flPageToken
    , flSortField
    , flOauthToken
    , flMaxResults
    , flFields
    , flAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFilesList@ which the
-- 'FilesList'' request conforms to.
type FilesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "files" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "sortOrder" DfareportingFilesListSortOrder
                   :>
                   QueryParam "key" Text :>
                     QueryParam "scope" DfareportingFilesListScope :>
                       QueryParam "pageToken" Text :>
                         QueryParam "sortField" DfareportingFilesListSortField
                           :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "maxResults" Int32 :>
                               QueryParam "fields" Text :>
                                 QueryParam "alt" Alt :> Get '[JSON] FileList

-- | Lists files for a user profile.
--
-- /See:/ 'filesList'' smart constructor.
data FilesList' = FilesList'
    { _flQuotaUser   :: !(Maybe Text)
    , _flPrettyPrint :: !Bool
    , _flUserIp      :: !(Maybe Text)
    , _flProfileId   :: !Int64
    , _flSortOrder   :: !DfareportingFilesListSortOrder
    , _flKey         :: !(Maybe Text)
    , _flScope       :: !DfareportingFilesListScope
    , _flPageToken   :: !(Maybe Text)
    , _flSortField   :: !DfareportingFilesListSortField
    , _flOauthToken  :: !(Maybe Text)
    , _flMaxResults  :: !(Maybe Int32)
    , _flFields      :: !(Maybe Text)
    , _flAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flQuotaUser'
--
-- * 'flPrettyPrint'
--
-- * 'flUserIp'
--
-- * 'flProfileId'
--
-- * 'flSortOrder'
--
-- * 'flKey'
--
-- * 'flScope'
--
-- * 'flPageToken'
--
-- * 'flSortField'
--
-- * 'flOauthToken'
--
-- * 'flMaxResults'
--
-- * 'flFields'
--
-- * 'flAlt'
filesList'
    :: Int64 -- ^ 'profileId'
    -> FilesList'
filesList' pFlProfileId_ =
    FilesList'
    { _flQuotaUser = Nothing
    , _flPrettyPrint = True
    , _flUserIp = Nothing
    , _flProfileId = pFlProfileId_
    , _flSortOrder = DFLSODescending
    , _flKey = Nothing
    , _flScope = Mine
    , _flPageToken = Nothing
    , _flSortField = DFLSFLastModifiedTime
    , _flOauthToken = Nothing
    , _flMaxResults = Nothing
    , _flFields = Nothing
    , _flAlt = JSON
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

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
flUserIp :: Lens' FilesList' (Maybe Text)
flUserIp = lens _flUserIp (\ s a -> s{_flUserIp = a})

-- | The DFA profile ID.
flProfileId :: Lens' FilesList' Int64
flProfileId
  = lens _flProfileId (\ s a -> s{_flProfileId = a})

-- | Order of sorted results, default is \'DESCENDING\'.
flSortOrder :: Lens' FilesList' DfareportingFilesListSortOrder
flSortOrder
  = lens _flSortOrder (\ s a -> s{_flSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
flKey :: Lens' FilesList' (Maybe Text)
flKey = lens _flKey (\ s a -> s{_flKey = a})

-- | The scope that defines which results are returned, default is \'MINE\'.
flScope :: Lens' FilesList' DfareportingFilesListScope
flScope = lens _flScope (\ s a -> s{_flScope = a})

-- | The value of the nextToken from the previous result page.
flPageToken :: Lens' FilesList' (Maybe Text)
flPageToken
  = lens _flPageToken (\ s a -> s{_flPageToken = a})

-- | The field by which to sort the list.
flSortField :: Lens' FilesList' DfareportingFilesListSortField
flSortField
  = lens _flSortField (\ s a -> s{_flSortField = a})

-- | OAuth 2.0 token for the current user.
flOauthToken :: Lens' FilesList' (Maybe Text)
flOauthToken
  = lens _flOauthToken (\ s a -> s{_flOauthToken = a})

-- | Maximum number of results to return.
flMaxResults :: Lens' FilesList' (Maybe Int32)
flMaxResults
  = lens _flMaxResults (\ s a -> s{_flMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
flFields :: Lens' FilesList' (Maybe Text)
flFields = lens _flFields (\ s a -> s{_flFields = a})

-- | Data format for the response.
flAlt :: Lens' FilesList' Alt
flAlt = lens _flAlt (\ s a -> s{_flAlt = a})

instance GoogleRequest FilesList' where
        type Rs FilesList' = FileList
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u FilesList'{..}
          = go _flQuotaUser (Just _flPrettyPrint) _flUserIp
              _flProfileId
              (Just _flSortOrder)
              _flKey
              (Just _flScope)
              _flPageToken
              (Just _flSortField)
              _flOauthToken
              _flMaxResults
              _flFields
              (Just _flAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy FilesListResource)
                      r
                      u
