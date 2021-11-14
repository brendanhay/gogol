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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing placement strategy. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementStrategies.patch@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Patch
    (
    -- * REST Resource
      PlacementStrategiesPatchResource

    -- * Creating a Request
    , placementStrategiesPatch
    , PlacementStrategiesPatch

    -- * Request Lenses
    , pspXgafv
    , pspUploadProtocol
    , pspAccessToken
    , pspUploadType
    , pspProFileId
    , pspPayload
    , pspId
    , pspCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placementStrategies.patch@ method which the
-- 'PlacementStrategiesPatch' request conforms to.
type PlacementStrategiesPatchResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementStrategies" :>
               QueryParam "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] PlacementStrategy :>
                               Patch '[JSON] PlacementStrategy

-- | Updates an existing placement strategy. This method supports patch
-- semantics.
--
-- /See:/ 'placementStrategiesPatch' smart constructor.
data PlacementStrategiesPatch =
  PlacementStrategiesPatch'
    { _pspXgafv :: !(Maybe Xgafv)
    , _pspUploadProtocol :: !(Maybe Text)
    , _pspAccessToken :: !(Maybe Text)
    , _pspUploadType :: !(Maybe Text)
    , _pspProFileId :: !(Textual Int64)
    , _pspPayload :: !PlacementStrategy
    , _pspId :: !(Textual Int64)
    , _pspCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementStrategiesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pspXgafv'
--
-- * 'pspUploadProtocol'
--
-- * 'pspAccessToken'
--
-- * 'pspUploadType'
--
-- * 'pspProFileId'
--
-- * 'pspPayload'
--
-- * 'pspId'
--
-- * 'pspCallback'
placementStrategiesPatch
    :: Int64 -- ^ 'pspProFileId'
    -> PlacementStrategy -- ^ 'pspPayload'
    -> Int64 -- ^ 'pspId'
    -> PlacementStrategiesPatch
placementStrategiesPatch pPspProFileId_ pPspPayload_ pPspId_ =
  PlacementStrategiesPatch'
    { _pspXgafv = Nothing
    , _pspUploadProtocol = Nothing
    , _pspAccessToken = Nothing
    , _pspUploadType = Nothing
    , _pspProFileId = _Coerce # pPspProFileId_
    , _pspPayload = pPspPayload_
    , _pspId = _Coerce # pPspId_
    , _pspCallback = Nothing
    }


-- | V1 error format.
pspXgafv :: Lens' PlacementStrategiesPatch (Maybe Xgafv)
pspXgafv = lens _pspXgafv (\ s a -> s{_pspXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pspUploadProtocol :: Lens' PlacementStrategiesPatch (Maybe Text)
pspUploadProtocol
  = lens _pspUploadProtocol
      (\ s a -> s{_pspUploadProtocol = a})

-- | OAuth access token.
pspAccessToken :: Lens' PlacementStrategiesPatch (Maybe Text)
pspAccessToken
  = lens _pspAccessToken
      (\ s a -> s{_pspAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pspUploadType :: Lens' PlacementStrategiesPatch (Maybe Text)
pspUploadType
  = lens _pspUploadType
      (\ s a -> s{_pspUploadType = a})

-- | User profile ID associated with this request.
pspProFileId :: Lens' PlacementStrategiesPatch Int64
pspProFileId
  = lens _pspProFileId (\ s a -> s{_pspProFileId = a})
      . _Coerce

-- | Multipart request metadata.
pspPayload :: Lens' PlacementStrategiesPatch PlacementStrategy
pspPayload
  = lens _pspPayload (\ s a -> s{_pspPayload = a})

-- | PlacementStrategy ID.
pspId :: Lens' PlacementStrategiesPatch Int64
pspId
  = lens _pspId (\ s a -> s{_pspId = a}) . _Coerce

-- | JSONP
pspCallback :: Lens' PlacementStrategiesPatch (Maybe Text)
pspCallback
  = lens _pspCallback (\ s a -> s{_pspCallback = a})

instance GoogleRequest PlacementStrategiesPatch where
        type Rs PlacementStrategiesPatch = PlacementStrategy
        type Scopes PlacementStrategiesPatch =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementStrategiesPatch'{..}
          = go _pspProFileId (Just _pspId) _pspXgafv
              _pspUploadProtocol
              _pspAccessToken
              _pspUploadType
              _pspCallback
              (Just AltJSON)
              _pspPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesPatchResource)
                      mempty
