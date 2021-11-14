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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing placement strategy.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementStrategies.delete@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Delete
    (
    -- * REST Resource
      PlacementStrategiesDeleteResource

    -- * Creating a Request
    , placementStrategiesDelete
    , PlacementStrategiesDelete

    -- * Request Lenses
    , psdXgafv
    , psdUploadProtocol
    , psdAccessToken
    , psdUploadType
    , psdProFileId
    , psdId
    , psdCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placementStrategies.delete@ method which the
-- 'PlacementStrategiesDelete' request conforms to.
type PlacementStrategiesDeleteResource =
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
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes an existing placement strategy.
--
-- /See:/ 'placementStrategiesDelete' smart constructor.
data PlacementStrategiesDelete =
  PlacementStrategiesDelete'
    { _psdXgafv :: !(Maybe Xgafv)
    , _psdUploadProtocol :: !(Maybe Text)
    , _psdAccessToken :: !(Maybe Text)
    , _psdUploadType :: !(Maybe Text)
    , _psdProFileId :: !(Textual Int64)
    , _psdId :: !(Textual Int64)
    , _psdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementStrategiesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psdXgafv'
--
-- * 'psdUploadProtocol'
--
-- * 'psdAccessToken'
--
-- * 'psdUploadType'
--
-- * 'psdProFileId'
--
-- * 'psdId'
--
-- * 'psdCallback'
placementStrategiesDelete
    :: Int64 -- ^ 'psdProFileId'
    -> Int64 -- ^ 'psdId'
    -> PlacementStrategiesDelete
placementStrategiesDelete pPsdProFileId_ pPsdId_ =
  PlacementStrategiesDelete'
    { _psdXgafv = Nothing
    , _psdUploadProtocol = Nothing
    , _psdAccessToken = Nothing
    , _psdUploadType = Nothing
    , _psdProFileId = _Coerce # pPsdProFileId_
    , _psdId = _Coerce # pPsdId_
    , _psdCallback = Nothing
    }


-- | V1 error format.
psdXgafv :: Lens' PlacementStrategiesDelete (Maybe Xgafv)
psdXgafv = lens _psdXgafv (\ s a -> s{_psdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psdUploadProtocol :: Lens' PlacementStrategiesDelete (Maybe Text)
psdUploadProtocol
  = lens _psdUploadProtocol
      (\ s a -> s{_psdUploadProtocol = a})

-- | OAuth access token.
psdAccessToken :: Lens' PlacementStrategiesDelete (Maybe Text)
psdAccessToken
  = lens _psdAccessToken
      (\ s a -> s{_psdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psdUploadType :: Lens' PlacementStrategiesDelete (Maybe Text)
psdUploadType
  = lens _psdUploadType
      (\ s a -> s{_psdUploadType = a})

-- | User profile ID associated with this request.
psdProFileId :: Lens' PlacementStrategiesDelete Int64
psdProFileId
  = lens _psdProFileId (\ s a -> s{_psdProFileId = a})
      . _Coerce

-- | Placement strategy ID.
psdId :: Lens' PlacementStrategiesDelete Int64
psdId
  = lens _psdId (\ s a -> s{_psdId = a}) . _Coerce

-- | JSONP
psdCallback :: Lens' PlacementStrategiesDelete (Maybe Text)
psdCallback
  = lens _psdCallback (\ s a -> s{_psdCallback = a})

instance GoogleRequest PlacementStrategiesDelete
         where
        type Rs PlacementStrategiesDelete = ()
        type Scopes PlacementStrategiesDelete =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementStrategiesDelete'{..}
          = go _psdProFileId _psdId _psdXgafv
              _psdUploadProtocol
              _psdAccessToken
              _psdUploadType
              _psdCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesDeleteResource)
                      mempty
