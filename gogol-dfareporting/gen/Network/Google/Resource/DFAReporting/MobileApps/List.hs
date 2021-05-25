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
-- Module      : Network.Google.Resource.DFAReporting.MobileApps.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves list of available mobile apps.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.mobileApps.list@.
module Network.Google.Resource.DFAReporting.MobileApps.List
    (
    -- * REST Resource
      MobileAppsListResource

    -- * Creating a Request
    , mobileAppsList
    , MobileAppsList

    -- * Request Lenses
    , malXgafv
    , malDirectories
    , malUploadProtocol
    , malAccessToken
    , malSearchString
    , malUploadType
    , malIds
    , malProFileId
    , malPageToken
    , malMaxResults
    , malCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.mobileApps.list@ method which the
-- 'MobileAppsList' request conforms to.
type MobileAppsListResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "mobileApps" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParams "directories" MobileAppsListDirectories
                   :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "searchString" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParams "ids" Text :>
                             QueryParam "pageToken" Text :>
                               QueryParam "maxResults" (Textual Int32) :>
                                 QueryParam "callback" Text :>
                                   QueryParam "alt" AltJSON :>
                                     Get '[JSON] MobileAppsListResponse

-- | Retrieves list of available mobile apps.
--
-- /See:/ 'mobileAppsList' smart constructor.
data MobileAppsList =
  MobileAppsList'
    { _malXgafv :: !(Maybe Xgafv)
    , _malDirectories :: !(Maybe [MobileAppsListDirectories])
    , _malUploadProtocol :: !(Maybe Text)
    , _malAccessToken :: !(Maybe Text)
    , _malSearchString :: !(Maybe Text)
    , _malUploadType :: !(Maybe Text)
    , _malIds :: !(Maybe [Text])
    , _malProFileId :: !(Textual Int64)
    , _malPageToken :: !(Maybe Text)
    , _malMaxResults :: !(Textual Int32)
    , _malCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MobileAppsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'malXgafv'
--
-- * 'malDirectories'
--
-- * 'malUploadProtocol'
--
-- * 'malAccessToken'
--
-- * 'malSearchString'
--
-- * 'malUploadType'
--
-- * 'malIds'
--
-- * 'malProFileId'
--
-- * 'malPageToken'
--
-- * 'malMaxResults'
--
-- * 'malCallback'
mobileAppsList
    :: Int64 -- ^ 'malProFileId'
    -> MobileAppsList
mobileAppsList pMalProFileId_ =
  MobileAppsList'
    { _malXgafv = Nothing
    , _malDirectories = Nothing
    , _malUploadProtocol = Nothing
    , _malAccessToken = Nothing
    , _malSearchString = Nothing
    , _malUploadType = Nothing
    , _malIds = Nothing
    , _malProFileId = _Coerce # pMalProFileId_
    , _malPageToken = Nothing
    , _malMaxResults = 1000
    , _malCallback = Nothing
    }


-- | V1 error format.
malXgafv :: Lens' MobileAppsList (Maybe Xgafv)
malXgafv = lens _malXgafv (\ s a -> s{_malXgafv = a})

-- | Select only apps from these directories.
malDirectories :: Lens' MobileAppsList [MobileAppsListDirectories]
malDirectories
  = lens _malDirectories
      (\ s a -> s{_malDirectories = a})
      . _Default
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
malUploadProtocol :: Lens' MobileAppsList (Maybe Text)
malUploadProtocol
  = lens _malUploadProtocol
      (\ s a -> s{_malUploadProtocol = a})

-- | OAuth access token.
malAccessToken :: Lens' MobileAppsList (Maybe Text)
malAccessToken
  = lens _malAccessToken
      (\ s a -> s{_malAccessToken = a})

-- | Allows searching for objects by name or ID. Wildcards (*) are allowed.
-- For example, \"app*2015\" will return objects with names like \"app Jan
-- 2018\", \"app Jan 2018\", or simply \"app 2018\". Most of the searches
-- also add wildcards implicitly at the start and the end of the search
-- string. For example, a search string of \"app\" will match objects with
-- name \"my app\", \"app 2018\", or simply \"app\".
malSearchString :: Lens' MobileAppsList (Maybe Text)
malSearchString
  = lens _malSearchString
      (\ s a -> s{_malSearchString = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
malUploadType :: Lens' MobileAppsList (Maybe Text)
malUploadType
  = lens _malUploadType
      (\ s a -> s{_malUploadType = a})

-- | Select only apps with these IDs.
malIds :: Lens' MobileAppsList [Text]
malIds
  = lens _malIds (\ s a -> s{_malIds = a}) . _Default .
      _Coerce

-- | User profile ID associated with this request.
malProFileId :: Lens' MobileAppsList Int64
malProFileId
  = lens _malProFileId (\ s a -> s{_malProFileId = a})
      . _Coerce

-- | Value of the nextPageToken from the previous result page.
malPageToken :: Lens' MobileAppsList (Maybe Text)
malPageToken
  = lens _malPageToken (\ s a -> s{_malPageToken = a})

-- | Maximum number of results to return.
malMaxResults :: Lens' MobileAppsList Int32
malMaxResults
  = lens _malMaxResults
      (\ s a -> s{_malMaxResults = a})
      . _Coerce

-- | JSONP
malCallback :: Lens' MobileAppsList (Maybe Text)
malCallback
  = lens _malCallback (\ s a -> s{_malCallback = a})

instance GoogleRequest MobileAppsList where
        type Rs MobileAppsList = MobileAppsListResponse
        type Scopes MobileAppsList =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient MobileAppsList'{..}
          = go _malProFileId _malXgafv
              (_malDirectories ^. _Default)
              _malUploadProtocol
              _malAccessToken
              _malSearchString
              _malUploadType
              (_malIds ^. _Default)
              _malPageToken
              (Just _malMaxResults)
              _malCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy MobileAppsListResource)
                      mempty
