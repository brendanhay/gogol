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
-- Module      : Network.Google.Resource.DFAReporting.Ads.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new ad.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.ads.insert@.
module Network.Google.Resource.DFAReporting.Ads.Insert
    (
    -- * REST Resource
      AdsInsertResource

    -- * Creating a Request
    , adsInsert
    , AdsInsert

    -- * Request Lenses
    , aiXgafv
    , aiUploadProtocol
    , aiAccessToken
    , aiUploadType
    , aiProFileId
    , aiPayload
    , aiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.ads.insert@ method which the
-- 'AdsInsert' request conforms to.
type AdsInsertResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "ads" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Ad :> Post '[JSON] Ad

-- | Inserts a new ad.
--
-- /See:/ 'adsInsert' smart constructor.
data AdsInsert =
  AdsInsert'
    { _aiXgafv :: !(Maybe Xgafv)
    , _aiUploadProtocol :: !(Maybe Text)
    , _aiAccessToken :: !(Maybe Text)
    , _aiUploadType :: !(Maybe Text)
    , _aiProFileId :: !(Textual Int64)
    , _aiPayload :: !Ad
    , _aiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AdsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiXgafv'
--
-- * 'aiUploadProtocol'
--
-- * 'aiAccessToken'
--
-- * 'aiUploadType'
--
-- * 'aiProFileId'
--
-- * 'aiPayload'
--
-- * 'aiCallback'
adsInsert
    :: Int64 -- ^ 'aiProFileId'
    -> Ad -- ^ 'aiPayload'
    -> AdsInsert
adsInsert pAiProFileId_ pAiPayload_ =
  AdsInsert'
    { _aiXgafv = Nothing
    , _aiUploadProtocol = Nothing
    , _aiAccessToken = Nothing
    , _aiUploadType = Nothing
    , _aiProFileId = _Coerce # pAiProFileId_
    , _aiPayload = pAiPayload_
    , _aiCallback = Nothing
    }


-- | V1 error format.
aiXgafv :: Lens' AdsInsert (Maybe Xgafv)
aiXgafv = lens _aiXgafv (\ s a -> s{_aiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aiUploadProtocol :: Lens' AdsInsert (Maybe Text)
aiUploadProtocol
  = lens _aiUploadProtocol
      (\ s a -> s{_aiUploadProtocol = a})

-- | OAuth access token.
aiAccessToken :: Lens' AdsInsert (Maybe Text)
aiAccessToken
  = lens _aiAccessToken
      (\ s a -> s{_aiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aiUploadType :: Lens' AdsInsert (Maybe Text)
aiUploadType
  = lens _aiUploadType (\ s a -> s{_aiUploadType = a})

-- | User profile ID associated with this request.
aiProFileId :: Lens' AdsInsert Int64
aiProFileId
  = lens _aiProFileId (\ s a -> s{_aiProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
aiPayload :: Lens' AdsInsert Ad
aiPayload
  = lens _aiPayload (\ s a -> s{_aiPayload = a})

-- | JSONP
aiCallback :: Lens' AdsInsert (Maybe Text)
aiCallback
  = lens _aiCallback (\ s a -> s{_aiCallback = a})

instance GoogleRequest AdsInsert where
        type Rs AdsInsert = Ad
        type Scopes AdsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AdsInsert'{..}
          = go _aiProFileId _aiXgafv _aiUploadProtocol
              _aiAccessToken
              _aiUploadType
              _aiCallback
              (Just AltJSON)
              _aiPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy AdsInsertResource)
                      mempty
