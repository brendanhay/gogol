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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one placement strategy by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementStrategies.get@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Get
    (
    -- * REST Resource
      PlacementStrategiesGetResource

    -- * Creating a Request
    , placementStrategiesGet
    , PlacementStrategiesGet

    -- * Request Lenses
    , psgXgafv
    , psgUploadProtocol
    , psgAccessToken
    , psgUploadType
    , psgProFileId
    , psgId
    , psgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placementStrategies.get@ method which the
-- 'PlacementStrategiesGet' request conforms to.
type PlacementStrategiesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placementStrategies" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] PlacementStrategy

-- | Gets one placement strategy by ID.
--
-- /See:/ 'placementStrategiesGet' smart constructor.
data PlacementStrategiesGet =
  PlacementStrategiesGet'
    { _psgXgafv :: !(Maybe Xgafv)
    , _psgUploadProtocol :: !(Maybe Text)
    , _psgAccessToken :: !(Maybe Text)
    , _psgUploadType :: !(Maybe Text)
    , _psgProFileId :: !(Textual Int64)
    , _psgId :: !(Textual Int64)
    , _psgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementStrategiesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psgXgafv'
--
-- * 'psgUploadProtocol'
--
-- * 'psgAccessToken'
--
-- * 'psgUploadType'
--
-- * 'psgProFileId'
--
-- * 'psgId'
--
-- * 'psgCallback'
placementStrategiesGet
    :: Int64 -- ^ 'psgProFileId'
    -> Int64 -- ^ 'psgId'
    -> PlacementStrategiesGet
placementStrategiesGet pPsgProFileId_ pPsgId_ =
  PlacementStrategiesGet'
    { _psgXgafv = Nothing
    , _psgUploadProtocol = Nothing
    , _psgAccessToken = Nothing
    , _psgUploadType = Nothing
    , _psgProFileId = _Coerce # pPsgProFileId_
    , _psgId = _Coerce # pPsgId_
    , _psgCallback = Nothing
    }


-- | V1 error format.
psgXgafv :: Lens' PlacementStrategiesGet (Maybe Xgafv)
psgXgafv = lens _psgXgafv (\ s a -> s{_psgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psgUploadProtocol :: Lens' PlacementStrategiesGet (Maybe Text)
psgUploadProtocol
  = lens _psgUploadProtocol
      (\ s a -> s{_psgUploadProtocol = a})

-- | OAuth access token.
psgAccessToken :: Lens' PlacementStrategiesGet (Maybe Text)
psgAccessToken
  = lens _psgAccessToken
      (\ s a -> s{_psgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psgUploadType :: Lens' PlacementStrategiesGet (Maybe Text)
psgUploadType
  = lens _psgUploadType
      (\ s a -> s{_psgUploadType = a})

-- | User profile ID associated with this request.
psgProFileId :: Lens' PlacementStrategiesGet Int64
psgProFileId
  = lens _psgProFileId (\ s a -> s{_psgProFileId = a})
      . _Coerce

-- | Placement strategy ID.
psgId :: Lens' PlacementStrategiesGet Int64
psgId
  = lens _psgId (\ s a -> s{_psgId = a}) . _Coerce

-- | JSONP
psgCallback :: Lens' PlacementStrategiesGet (Maybe Text)
psgCallback
  = lens _psgCallback (\ s a -> s{_psgCallback = a})

instance GoogleRequest PlacementStrategiesGet where
        type Rs PlacementStrategiesGet = PlacementStrategy
        type Scopes PlacementStrategiesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementStrategiesGet'{..}
          = go _psgProFileId _psgId _psgXgafv
              _psgUploadProtocol
              _psgAccessToken
              _psgUploadType
              _psgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesGetResource)
                      mempty
