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
-- Module      : Network.Google.Resource.DFAReporting.Placements.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new placement.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.placements.insert@.
module Network.Google.Resource.DFAReporting.Placements.Insert
    (
    -- * REST Resource
      PlacementsInsertResource

    -- * Creating a Request
    , placementsInsert
    , PlacementsInsert

    -- * Request Lenses
    , piXgafv
    , piUploadProtocol
    , piAccessToken
    , piUploadType
    , piProFileId
    , piPayload
    , piCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.placements.insert@ method which the
-- 'PlacementsInsert' request conforms to.
type PlacementsInsertResource =
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
                           ReqBody '[JSON] Placement :> Post '[JSON] Placement

-- | Inserts a new placement.
--
-- /See:/ 'placementsInsert' smart constructor.
data PlacementsInsert =
  PlacementsInsert'
    { _piXgafv :: !(Maybe Xgafv)
    , _piUploadProtocol :: !(Maybe Text)
    , _piAccessToken :: !(Maybe Text)
    , _piUploadType :: !(Maybe Text)
    , _piProFileId :: !(Textual Int64)
    , _piPayload :: !Placement
    , _piCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlacementsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'piXgafv'
--
-- * 'piUploadProtocol'
--
-- * 'piAccessToken'
--
-- * 'piUploadType'
--
-- * 'piProFileId'
--
-- * 'piPayload'
--
-- * 'piCallback'
placementsInsert
    :: Int64 -- ^ 'piProFileId'
    -> Placement -- ^ 'piPayload'
    -> PlacementsInsert
placementsInsert pPiProFileId_ pPiPayload_ =
  PlacementsInsert'
    { _piXgafv = Nothing
    , _piUploadProtocol = Nothing
    , _piAccessToken = Nothing
    , _piUploadType = Nothing
    , _piProFileId = _Coerce # pPiProFileId_
    , _piPayload = pPiPayload_
    , _piCallback = Nothing
    }


-- | V1 error format.
piXgafv :: Lens' PlacementsInsert (Maybe Xgafv)
piXgafv = lens _piXgafv (\ s a -> s{_piXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
piUploadProtocol :: Lens' PlacementsInsert (Maybe Text)
piUploadProtocol
  = lens _piUploadProtocol
      (\ s a -> s{_piUploadProtocol = a})

-- | OAuth access token.
piAccessToken :: Lens' PlacementsInsert (Maybe Text)
piAccessToken
  = lens _piAccessToken
      (\ s a -> s{_piAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
piUploadType :: Lens' PlacementsInsert (Maybe Text)
piUploadType
  = lens _piUploadType (\ s a -> s{_piUploadType = a})

-- | User profile ID associated with this request.
piProFileId :: Lens' PlacementsInsert Int64
piProFileId
  = lens _piProFileId (\ s a -> s{_piProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
piPayload :: Lens' PlacementsInsert Placement
piPayload
  = lens _piPayload (\ s a -> s{_piPayload = a})

-- | JSONP
piCallback :: Lens' PlacementsInsert (Maybe Text)
piCallback
  = lens _piCallback (\ s a -> s{_piCallback = a})

instance GoogleRequest PlacementsInsert where
        type Rs PlacementsInsert = Placement
        type Scopes PlacementsInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient PlacementsInsert'{..}
          = go _piProFileId _piXgafv _piUploadProtocol
              _piAccessToken
              _piUploadType
              _piCallback
              (Just AltJSON)
              _piPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy PlacementsInsertResource)
                      mempty
