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
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.advertisers.insert@.
module Network.Google.Resource.DFAReporting.Advertisers.Insert
    (
    -- * REST Resource
      AdvertisersInsertResource

    -- * Creating a Request
    , advertisersInsert
    , AdvertisersInsert

    -- * Request Lenses
    , aiiXgafv
    , aiiUploadProtocol
    , aiiAccessToken
    , aiiUploadType
    , aiiProFileId
    , aiiPayload
    , aiiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.advertisers.insert@ method which the
-- 'AdvertisersInsert' request conforms to.
type AdvertisersInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "advertisers" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Advertiser :> Post '[JSON] Advertiser

-- | Inserts a new advertiser.
--
-- /See:/ 'advertisersInsert' smart constructor.
data AdvertisersInsert =
  AdvertisersInsert'
    { _aiiXgafv :: !(Maybe Xgafv)
    , _aiiUploadProtocol :: !(Maybe Text)
    , _aiiAccessToken :: !(Maybe Text)
    , _aiiUploadType :: !(Maybe Text)
    , _aiiProFileId :: !(Textual Int64)
    , _aiiPayload :: !Advertiser
    , _aiiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdvertisersInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiiXgafv'
--
-- * 'aiiUploadProtocol'
--
-- * 'aiiAccessToken'
--
-- * 'aiiUploadType'
--
-- * 'aiiProFileId'
--
-- * 'aiiPayload'
--
-- * 'aiiCallback'
advertisersInsert
    :: Int64 -- ^ 'aiiProFileId'
    -> Advertiser -- ^ 'aiiPayload'
    -> AdvertisersInsert
advertisersInsert pAiiProFileId_ pAiiPayload_ =
  AdvertisersInsert'
    { _aiiXgafv = Nothing
    , _aiiUploadProtocol = Nothing
    , _aiiAccessToken = Nothing
    , _aiiUploadType = Nothing
    , _aiiProFileId = _Coerce # pAiiProFileId_
    , _aiiPayload = pAiiPayload_
    , _aiiCallback = Nothing
    }


-- | V1 error format.
aiiXgafv :: Lens' AdvertisersInsert (Maybe Xgafv)
aiiXgafv = lens _aiiXgafv (\ s a -> s{_aiiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aiiUploadProtocol :: Lens' AdvertisersInsert (Maybe Text)
aiiUploadProtocol
  = lens _aiiUploadProtocol
      (\ s a -> s{_aiiUploadProtocol = a})

-- | OAuth access token.
aiiAccessToken :: Lens' AdvertisersInsert (Maybe Text)
aiiAccessToken
  = lens _aiiAccessToken
      (\ s a -> s{_aiiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aiiUploadType :: Lens' AdvertisersInsert (Maybe Text)
aiiUploadType
  = lens _aiiUploadType
      (\ s a -> s{_aiiUploadType = a})

-- | User profile ID associated with this request.
aiiProFileId :: Lens' AdvertisersInsert Int64
aiiProFileId
  = lens _aiiProFileId (\ s a -> s{_aiiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
aiiPayload :: Lens' AdvertisersInsert Advertiser
aiiPayload
  = lens _aiiPayload (\ s a -> s{_aiiPayload = a})

-- | JSONP
aiiCallback :: Lens' AdvertisersInsert (Maybe Text)
aiiCallback
  = lens _aiiCallback (\ s a -> s{_aiiCallback = a})

instance GoogleRequest AdvertisersInsert where
        type Rs AdvertisersInsert = Advertiser
        type Scopes AdvertisersInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdvertisersInsert'{..}
          = go _aiiProFileId _aiiXgafv _aiiUploadProtocol
              _aiiAccessToken
              _aiiUploadType
              _aiiCallback
              (Just AltJSON)
              _aiiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AdvertisersInsertResource)
                      mempty
