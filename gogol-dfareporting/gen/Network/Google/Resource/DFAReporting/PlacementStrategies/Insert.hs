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
-- Module      : Network.Google.Resource.DFAReporting.PlacementStrategies.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new placement strategy.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placementStrategies.insert@.
module Network.Google.Resource.DFAReporting.PlacementStrategies.Insert
    (
    -- * REST Resource
      PlacementStrategiesInsertResource

    -- * Creating a Request
    , placementStrategiesInsert
    , PlacementStrategiesInsert

    -- * Request Lenses
    , psiXgafv
    , psiUploadProtocol
    , psiAccessToken
    , psiUploadType
    , psiProFileId
    , psiPayload
    , psiCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placementStrategies.insert@ method which the
-- 'PlacementStrategiesInsert' request conforms to.
type PlacementStrategiesInsertResource =
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
                             Post '[JSON] PlacementStrategy

-- | Inserts a new placement strategy.
--
-- /See:/ 'placementStrategiesInsert' smart constructor.
data PlacementStrategiesInsert =
  PlacementStrategiesInsert'
    { _psiXgafv :: !(Maybe Xgafv)
    , _psiUploadProtocol :: !(Maybe Text)
    , _psiAccessToken :: !(Maybe Text)
    , _psiUploadType :: !(Maybe Text)
    , _psiProFileId :: !(Textual Int64)
    , _psiPayload :: !PlacementStrategy
    , _psiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementStrategiesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psiXgafv'
--
-- * 'psiUploadProtocol'
--
-- * 'psiAccessToken'
--
-- * 'psiUploadType'
--
-- * 'psiProFileId'
--
-- * 'psiPayload'
--
-- * 'psiCallback'
placementStrategiesInsert
    :: Int64 -- ^ 'psiProFileId'
    -> PlacementStrategy -- ^ 'psiPayload'
    -> PlacementStrategiesInsert
placementStrategiesInsert pPsiProFileId_ pPsiPayload_ =
  PlacementStrategiesInsert'
    { _psiXgafv = Nothing
    , _psiUploadProtocol = Nothing
    , _psiAccessToken = Nothing
    , _psiUploadType = Nothing
    , _psiProFileId = _Coerce # pPsiProFileId_
    , _psiPayload = pPsiPayload_
    , _psiCallback = Nothing
    }


-- | V1 error format.
psiXgafv :: Lens' PlacementStrategiesInsert (Maybe Xgafv)
psiXgafv = lens _psiXgafv (\ s a -> s{_psiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
psiUploadProtocol :: Lens' PlacementStrategiesInsert (Maybe Text)
psiUploadProtocol
  = lens _psiUploadProtocol
      (\ s a -> s{_psiUploadProtocol = a})

-- | OAuth access token.
psiAccessToken :: Lens' PlacementStrategiesInsert (Maybe Text)
psiAccessToken
  = lens _psiAccessToken
      (\ s a -> s{_psiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
psiUploadType :: Lens' PlacementStrategiesInsert (Maybe Text)
psiUploadType
  = lens _psiUploadType
      (\ s a -> s{_psiUploadType = a})

-- | User profile ID associated with this request.
psiProFileId :: Lens' PlacementStrategiesInsert Int64
psiProFileId
  = lens _psiProFileId (\ s a -> s{_psiProFileId = a})
      . _Coerce

-- | Multipart request metadata.
psiPayload :: Lens' PlacementStrategiesInsert PlacementStrategy
psiPayload
  = lens _psiPayload (\ s a -> s{_psiPayload = a})

-- | JSONP
psiCallback :: Lens' PlacementStrategiesInsert (Maybe Text)
psiCallback
  = lens _psiCallback (\ s a -> s{_psiCallback = a})

instance GoogleRequest PlacementStrategiesInsert
         where
        type Rs PlacementStrategiesInsert = PlacementStrategy
        type Scopes PlacementStrategiesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementStrategiesInsert'{..}
          = go _psiProFileId _psiXgafv _psiUploadProtocol
              _psiAccessToken
              _psiUploadType
              _psiCallback
              (Just AltJSON)
              _psiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementStrategiesInsertResource)
                      mempty
