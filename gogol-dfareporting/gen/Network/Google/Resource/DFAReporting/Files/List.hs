{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

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
    , flUserIP
    , flProFileId
    , flSortOrder
    , flKey
    , flScope
    , flPageToken
    , flSortField
    , flOAuthToken
    , flMaxResults
    , flFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingFilesList@ which the
-- 'FilesList'' request conforms to.
type FilesListResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "files" :>
           QueryParam "sortOrder" FilesListSortOrder :>
             QueryParam "scope" FilesListScope :>
               QueryParam "pageToken" Text :>
                 QueryParam "sortField" FilesListSortField :>
                   QueryParam "maxResults" Int32 :>
                     QueryParam "quotaUser" Text :>
                       QueryParam "prettyPrint" Bool :>
                         QueryParam "userIp" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "key" AuthKey :>
                               QueryParam "oauth_token" OAuthToken :>
                                 QueryParam "alt" AltJSON :>
                                   Get '[JSON] FileList

-- | Lists files for a user profile.
--
-- /See:/ 'filesList'' smart constructor.
data FilesList' = FilesList'
    { _flQuotaUser   :: !(Maybe Text)
    , _flPrettyPrint :: !Bool
    , _flUserIP      :: !(Maybe Text)
    , _flProFileId   :: !Int64
    , _flSortOrder   :: !FilesListSortOrder
    , _flKey         :: !(Maybe AuthKey)
    , _flScope       :: !FilesListScope
    , _flPageToken   :: !(Maybe Text)
    , _flSortField   :: !FilesListSortField
    , _flOAuthToken  :: !(Maybe OAuthToken)
    , _flMaxResults  :: !(Maybe Int32)
    , _flFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FilesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'flQuotaUser'
--
-- * 'flPrettyPrint'
--
-- * 'flUserIP'
--
-- * 'flProFileId'
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
-- * 'flOAuthToken'
--
-- * 'flMaxResults'
--
-- * 'flFields'
filesList'
    :: Int64 -- ^ 'profileId'
    -> FilesList'
filesList' pFlProFileId_ =
    FilesList'
    { _flQuotaUser = Nothing
    , _flPrettyPrint = True
    , _flUserIP = Nothing
    , _flProFileId = pFlProFileId_
    , _flSortOrder = FLSODescending
    , _flKey = Nothing
    , _flScope = FLSMine
    , _flPageToken = Nothing
    , _flSortField = FLSFLastModifiedTime
    , _flOAuthToken = Nothing
    , _flMaxResults = Nothing
    , _flFields = Nothing
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
flUserIP :: Lens' FilesList' (Maybe Text)
flUserIP = lens _flUserIP (\ s a -> s{_flUserIP = a})

-- | The DFA profile ID.
flProFileId :: Lens' FilesList' Int64
flProFileId
  = lens _flProFileId (\ s a -> s{_flProFileId = a})

-- | Order of sorted results, default is \'DESCENDING\'.
flSortOrder :: Lens' FilesList' FilesListSortOrder
flSortOrder
  = lens _flSortOrder (\ s a -> s{_flSortOrder = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
flKey :: Lens' FilesList' (Maybe AuthKey)
flKey = lens _flKey (\ s a -> s{_flKey = a})

-- | The scope that defines which results are returned, default is \'MINE\'.
flScope :: Lens' FilesList' FilesListScope
flScope = lens _flScope (\ s a -> s{_flScope = a})

-- | The value of the nextToken from the previous result page.
flPageToken :: Lens' FilesList' (Maybe Text)
flPageToken
  = lens _flPageToken (\ s a -> s{_flPageToken = a})

-- | The field by which to sort the list.
flSortField :: Lens' FilesList' FilesListSortField
flSortField
  = lens _flSortField (\ s a -> s{_flSortField = a})

-- | OAuth 2.0 token for the current user.
flOAuthToken :: Lens' FilesList' (Maybe OAuthToken)
flOAuthToken
  = lens _flOAuthToken (\ s a -> s{_flOAuthToken = a})

-- | Maximum number of results to return.
flMaxResults :: Lens' FilesList' (Maybe Int32)
flMaxResults
  = lens _flMaxResults (\ s a -> s{_flMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
flFields :: Lens' FilesList' (Maybe Text)
flFields = lens _flFields (\ s a -> s{_flFields = a})

instance GoogleAuth FilesList' where
        authKey = flKey . _Just
        authToken = flOAuthToken . _Just

instance GoogleRequest FilesList' where
        type Rs FilesList' = FileList
        request = requestWith dFAReportingRequest
        requestWith rq FilesList'{..}
          = go _flProFileId (Just _flSortOrder) (Just _flScope)
              _flPageToken
              (Just _flSortField)
              _flMaxResults
              _flQuotaUser
              (Just _flPrettyPrint)
              _flUserIP
              _flFields
              _flKey
              _flOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy FilesListResource) rq
