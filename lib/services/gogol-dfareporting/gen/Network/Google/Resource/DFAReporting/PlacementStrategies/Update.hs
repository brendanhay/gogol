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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing placement strategy.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementStrategies.update@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Update
    (
    -- * REST Resource
      PlacementStrategiesUpdateResource

    -- * Creating a Request
    , placementStrategiesUpdate
    , PlacementStrategiesUpdate

    -- * Request Lenses
    , psuXgafv
    , psuUploadProtocol
    , psuAccessToken
    , psuUploadType
    , psuProFileId
    , psuPayload
    , psuCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placementStrategies.update@ method which the
-- 'PlacementStrategiesUpdate' request conforms to.
type PlacementStrategiesUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementStrategies" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] PlacementStrategy :>
                             Put '[JSON] PlacementStrategy

-- | Updates an existing placement strategy.
--
-- /See:/ 'placementStrategiesUpdate' smart constructor.
data PlacementStrategiesUpdate =
  PlacementStrategiesUpdate'
    { _psuXgafv :: !(Maybe Xgafv)
    , _psuUploadProtocol :: !(Maybe Text)
    , _psuAccessToken :: !(Maybe Text)
    , _psuUploadType :: !(Maybe Text)
    , _psuProFileId :: !(Textual Int64)
    , _psuPayload :: !PlacementStrategy
    , _psuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementStrategiesUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psuXgafv'
--
-- * 'psuUploadProtocol'
--
-- * 'psuAccessToken'
--
-- * 'psuUploadType'
--
-- * 'psuProFileId'
--
-- * 'psuPayload'
--
-- * 'psuCallback'
placementStrategiesUpdate
    :: Int64 -- ^ 'psuProFileId'
    -> PlacementStrategy -- ^ 'psuPayload'
    -> PlacementStrategiesUpdate
placementStrategiesUpdate pPsuProFileId_ pPsuPayload_ =
  PlacementStrategiesUpdate'
    { _psuXgafv = Nothing
    , _psuUploadProtocol = Nothing
    , _psuAccessToken = Nothing
    , _psuUploadType = Nothing
    , _psuProFileId = _Coerce # pPsuProFileId_
    , _psuPayload = pPsuPayload_
    , _psuCallback = Nothing
    }


-- | V1 error format.
psuXgafv :: Lens' PlacementStrategiesUpdate (Maybe Xgafv)
psuXgafv = lens _psuXgafv (\ s a -> s{_psuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psuUploadProtocol :: Lens' PlacementStrategiesUpdate (Maybe Text)
psuUploadProtocol
  = lens _psuUploadProtocol
      (\ s a -> s{_psuUploadProtocol = a})

-- | OAuth access token.
psuAccessToken :: Lens' PlacementStrategiesUpdate (Maybe Text)
psuAccessToken
  = lens _psuAccessToken
      (\ s a -> s{_psuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psuUploadType :: Lens' PlacementStrategiesUpdate (Maybe Text)
psuUploadType
  = lens _psuUploadType
      (\ s a -> s{_psuUploadType = a})

-- | User profile ID associated with this request.
psuProFileId :: Lens' PlacementStrategiesUpdate Int64
psuProFileId
  = lens _psuProFileId (\ s a -> s{_psuProFileId = a})
      . _Coerce

-- | Multipart request metadata.
psuPayload :: Lens' PlacementStrategiesUpdate PlacementStrategy
psuPayload
  = lens _psuPayload (\ s a -> s{_psuPayload = a})

-- | JSONP
psuCallback :: Lens' PlacementStrategiesUpdate (Maybe Text)
psuCallback
  = lens _psuCallback (\ s a -> s{_psuCallback = a})

instance GoogleRequest PlacementStrategiesUpdate
         where
        type Rs PlacementStrategiesUpdate = PlacementStrategy
        type Scopes PlacementStrategiesUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementStrategiesUpdate'{..}
          = go _psuProFileId _psuXgafv _psuUploadProtocol
              _psuAccessToken
              _psuUploadType
              _psuCallback
              (Just AltJSON)
              _psuPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesUpdateResource)
                      mempty
