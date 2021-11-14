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
-- Module      : Network.Google.Resource.DFAReporting.Placements.Update
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an existing placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placements.update@.
module Network.Google.Resource.DFAReporting.Placements.Update
    (
    -- * REST Resource
      PlacementsUpdateResource

    -- * Creating a Request
    , placementsUpdate
    , PlacementsUpdate

    -- * Request Lenses
    , puXgafv
    , puUploadProtocol
    , puAccessToken
    , puUploadType
    , puProFileId
    , puPayload
    , puCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placements.update@ method which the
-- 'PlacementsUpdate' request conforms to.
type PlacementsUpdateResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "placements" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Placement :> Put '[JSON] Placement

-- | Updates an existing placement.
--
-- /See:/ 'placementsUpdate' smart constructor.
data PlacementsUpdate =
  PlacementsUpdate'
    { _puXgafv :: !(Maybe Xgafv)
    , _puUploadProtocol :: !(Maybe Text)
    , _puAccessToken :: !(Maybe Text)
    , _puUploadType :: !(Maybe Text)
    , _puProFileId :: !(Textual Int64)
    , _puPayload :: !Placement
    , _puCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puXgafv'
--
-- * 'puUploadProtocol'
--
-- * 'puAccessToken'
--
-- * 'puUploadType'
--
-- * 'puProFileId'
--
-- * 'puPayload'
--
-- * 'puCallback'
placementsUpdate
    :: Int64 -- ^ 'puProFileId'
    -> Placement -- ^ 'puPayload'
    -> PlacementsUpdate
placementsUpdate pPuProFileId_ pPuPayload_ =
  PlacementsUpdate'
    { _puXgafv = Nothing
    , _puUploadProtocol = Nothing
    , _puAccessToken = Nothing
    , _puUploadType = Nothing
    , _puProFileId = _Coerce # pPuProFileId_
    , _puPayload = pPuPayload_
    , _puCallback = Nothing
    }


-- | V1 error format.
puXgafv :: Lens' PlacementsUpdate (Maybe Xgafv)
puXgafv = lens _puXgafv (\ s a -> s{_puXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
puUploadProtocol :: Lens' PlacementsUpdate (Maybe Text)
puUploadProtocol
  = lens _puUploadProtocol
      (\ s a -> s{_puUploadProtocol = a})

-- | OAuth access token.
puAccessToken :: Lens' PlacementsUpdate (Maybe Text)
puAccessToken
  = lens _puAccessToken
      (\ s a -> s{_puAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
puUploadType :: Lens' PlacementsUpdate (Maybe Text)
puUploadType
  = lens _puUploadType (\ s a -> s{_puUploadType = a})

-- | User profile ID associated with this request.
puProFileId :: Lens' PlacementsUpdate Int64
puProFileId
  = lens _puProFileId (\ s a -> s{_puProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
puPayload :: Lens' PlacementsUpdate Placement
puPayload
  = lens _puPayload (\ s a -> s{_puPayload = a})

-- | JSONP
puCallback :: Lens' PlacementsUpdate (Maybe Text)
puCallback
  = lens _puCallback (\ s a -> s{_puCallback = a})

instance GoogleRequest PlacementsUpdate where
        type Rs PlacementsUpdate = Placement
        type Scopes PlacementsUpdate =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementsUpdate'{..}
          = go _puProFileId _puXgafv _puUploadProtocol
              _puAccessToken
              _puUploadType
              _puCallback
              (Just AltJSON)
              _puPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementsUpdateResource)
                      mempty
