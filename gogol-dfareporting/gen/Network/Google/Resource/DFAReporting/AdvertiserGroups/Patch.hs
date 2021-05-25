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
-- Module      : Network.Google.Resource.DFAReporting.AdvertiserGroups.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing advertiser group. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertiserGroups.patch@.
module Network.Google.Resource.DFAReporting.AdvertiserGroups.Patch
    (
    -- * REST Resource
      AdvertiserGroupsPatchResource

    -- * Creating a Request
    , advertiserGroupsPatch
    , AdvertiserGroupsPatch

    -- * Request Lenses
    , agpXgafv
    , agpUploadProtocol
    , agpAccessToken
    , agpUploadType
    , agpProFileId
    , agpPayload
    , agpId
    , agpCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertiserGroups.patch@ method which the
-- 'AdvertiserGroupsPatch' request conforms to.
type AdvertiserGroupsPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertiserGroups" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] AdvertiserGroup :>
                               Patch '[JSON] AdvertiserGroup

-- | Updates an existing advertiser group. This method supports patch
-- semantics.
--
-- /See:/ 'advertiserGroupsPatch' smart constructor.
data AdvertiserGroupsPatch =
  AdvertiserGroupsPatch'
    { _agpXgafv :: !(Maybe Xgafv)
    , _agpUploadProtocol :: !(Maybe Text)
    , _agpAccessToken :: !(Maybe Text)
    , _agpUploadType :: !(Maybe Text)
    , _agpProFileId :: !(Textual Int64)
    , _agpPayload :: !AdvertiserGroup
    , _agpId :: !(Textual Int64)
    , _agpCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertiserGroupsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'agpXgafv'
--
-- * 'agpUploadProtocol'
--
-- * 'agpAccessToken'
--
-- * 'agpUploadType'
--
-- * 'agpProFileId'
--
-- * 'agpPayload'
--
-- * 'agpId'
--
-- * 'agpCallback'
advertiserGroupsPatch
    :: Int64 -- ^ 'agpProFileId'
    -> AdvertiserGroup -- ^ 'agpPayload'
    -> Int64 -- ^ 'agpId'
    -> AdvertiserGroupsPatch
advertiserGroupsPatch pAgpProFileId_ pAgpPayload_ pAgpId_ =
  AdvertiserGroupsPatch'
    { _agpXgafv = Nothing
    , _agpUploadProtocol = Nothing
    , _agpAccessToken = Nothing
    , _agpUploadType = Nothing
    , _agpProFileId = _Coerce # pAgpProFileId_
    , _agpPayload = pAgpPayload_
    , _agpId = _Coerce # pAgpId_
    , _agpCallback = Nothing
    }


-- | V1 error format.
agpXgafv :: Lens' AdvertiserGroupsPatch (Maybe Xgafv)
agpXgafv = lens _agpXgafv (\ s a -> s{_agpXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
agpUploadProtocol :: Lens' AdvertiserGroupsPatch (Maybe Text)
agpUploadProtocol
  = lens _agpUploadProtocol
      (\ s a -> s{_agpUploadProtocol = a})

-- | OAuth access token.
agpAccessToken :: Lens' AdvertiserGroupsPatch (Maybe Text)
agpAccessToken
  = lens _agpAccessToken
      (\ s a -> s{_agpAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
agpUploadType :: Lens' AdvertiserGroupsPatch (Maybe Text)
agpUploadType
  = lens _agpUploadType
      (\ s a -> s{_agpUploadType = a})

-- | User profile ID associated with this request.
agpProFileId :: Lens' AdvertiserGroupsPatch Int64
agpProFileId
  = lens _agpProFileId (\ s a -> s{_agpProFileId = a})
      . _Coerce

-- | Multipart request metadata.
agpPayload :: Lens' AdvertiserGroupsPatch AdvertiserGroup
agpPayload
  = lens _agpPayload (\ s a -> s{_agpPayload = a})

-- | AdvertiserGroup ID.
agpId :: Lens' AdvertiserGroupsPatch Int64
agpId
  = lens _agpId (\ s a -> s{_agpId = a}) . _Coerce

-- | JSONP
agpCallback :: Lens' AdvertiserGroupsPatch (Maybe Text)
agpCallback
  = lens _agpCallback (\ s a -> s{_agpCallback = a})

instance GoogleRequest AdvertiserGroupsPatch where
        type Rs AdvertiserGroupsPatch = AdvertiserGroup
        type Scopes AdvertiserGroupsPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertiserGroupsPatch'{..}
          = go _agpProFileId (Just _agpId) _agpXgafv
              _agpUploadProtocol
              _agpAccessToken
              _agpUploadType
              _agpCallback
              (Just AltJSON)
              _agpPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertiserGroupsPatchResource)
                      mempty
