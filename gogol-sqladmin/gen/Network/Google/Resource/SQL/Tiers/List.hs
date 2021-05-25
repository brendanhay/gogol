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
-- Module      : Network.Google.Resource.SQL.Tiers.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all available machine types (tiers) for Cloud SQL, for example,
-- db-custom-1-3840. For more information, see
-- https:\/\/cloud.google.com\/sql\/pricing.
--
-- /See:/ <https://developers.google.com/cloud-sql/ Cloud SQL Admin API Reference> for @sql.tiers.list@.
module Network.Google.Resource.SQL.Tiers.List
    (
    -- * REST Resource
      TiersListResource

    -- * Creating a Request
    , tiersList
    , TiersList

    -- * Request Lenses
    , tlXgafv
    , tlUploadProtocol
    , tlProject
    , tlAccessToken
    , tlUploadType
    , tlCallback
    ) where

import Network.Google.Prelude
import Network.Google.SQLAdmin.Types

-- | A resource alias for @sql.tiers.list@ method which the
-- 'TiersList' request conforms to.
type TiersListResource =
     "v1" :>
       "projects" :>
         Capture "project" Text :>
           "tiers" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :>
                         Get '[JSON] TiersListResponse

-- | Lists all available machine types (tiers) for Cloud SQL, for example,
-- db-custom-1-3840. For more information, see
-- https:\/\/cloud.google.com\/sql\/pricing.
--
-- /See:/ 'tiersList' smart constructor.
data TiersList =
  TiersList'
    { _tlXgafv :: !(Maybe Xgafv)
    , _tlUploadProtocol :: !(Maybe Text)
    , _tlProject :: !Text
    , _tlAccessToken :: !(Maybe Text)
    , _tlUploadType :: !(Maybe Text)
    , _tlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TiersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlXgafv'
--
-- * 'tlUploadProtocol'
--
-- * 'tlProject'
--
-- * 'tlAccessToken'
--
-- * 'tlUploadType'
--
-- * 'tlCallback'
tiersList
    :: Text -- ^ 'tlProject'
    -> TiersList
tiersList pTlProject_ =
  TiersList'
    { _tlXgafv = Nothing
    , _tlUploadProtocol = Nothing
    , _tlProject = pTlProject_
    , _tlAccessToken = Nothing
    , _tlUploadType = Nothing
    , _tlCallback = Nothing
    }


-- | V1 error format.
tlXgafv :: Lens' TiersList (Maybe Xgafv)
tlXgafv = lens _tlXgafv (\ s a -> s{_tlXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
tlUploadProtocol :: Lens' TiersList (Maybe Text)
tlUploadProtocol
  = lens _tlUploadProtocol
      (\ s a -> s{_tlUploadProtocol = a})

-- | Project ID of the project for which to list tiers.
tlProject :: Lens' TiersList Text
tlProject
  = lens _tlProject (\ s a -> s{_tlProject = a})

-- | OAuth access token.
tlAccessToken :: Lens' TiersList (Maybe Text)
tlAccessToken
  = lens _tlAccessToken
      (\ s a -> s{_tlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
tlUploadType :: Lens' TiersList (Maybe Text)
tlUploadType
  = lens _tlUploadType (\ s a -> s{_tlUploadType = a})

-- | JSONP
tlCallback :: Lens' TiersList (Maybe Text)
tlCallback
  = lens _tlCallback (\ s a -> s{_tlCallback = a})

instance GoogleRequest TiersList where
        type Rs TiersList = TiersListResponse
        type Scopes TiersList =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/sqlservice.admin"]
        requestClient TiersList'{..}
          = go _tlProject _tlXgafv _tlUploadProtocol
              _tlAccessToken
              _tlUploadType
              _tlCallback
              (Just AltJSON)
              sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy TiersListResource)
                      mempty
