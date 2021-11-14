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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Consent in the parent consent store.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.consents.create@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.Consents.Create
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresConsentsCreateResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresConsentsCreate
    , ProjectsLocationsDataSetsConsentStoresConsentsCreate

    -- * Request Lenses
    , pldscsccParent
    , pldscsccXgafv
    , pldscsccUploadProtocol
    , pldscsccAccessToken
    , pldscsccUploadType
    , pldscsccPayload
    , pldscsccCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.consents.create@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresConsentsCreate' request conforms to.
type ProjectsLocationsDataSetsConsentStoresConsentsCreateResource
     =
     "v1" :>
       Capture "parent" Text :>
         "consents" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Consent :> Post '[JSON] Consent

-- | Creates a new Consent in the parent consent store.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresConsentsCreate' smart constructor.
data ProjectsLocationsDataSetsConsentStoresConsentsCreate =
  ProjectsLocationsDataSetsConsentStoresConsentsCreate'
    { _pldscsccParent :: !Text
    , _pldscsccXgafv :: !(Maybe Xgafv)
    , _pldscsccUploadProtocol :: !(Maybe Text)
    , _pldscsccAccessToken :: !(Maybe Text)
    , _pldscsccUploadType :: !(Maybe Text)
    , _pldscsccPayload :: !Consent
    , _pldscsccCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresConsentsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscsccParent'
--
-- * 'pldscsccXgafv'
--
-- * 'pldscsccUploadProtocol'
--
-- * 'pldscsccAccessToken'
--
-- * 'pldscsccUploadType'
--
-- * 'pldscsccPayload'
--
-- * 'pldscsccCallback'
projectsLocationsDataSetsConsentStoresConsentsCreate
    :: Text -- ^ 'pldscsccParent'
    -> Consent -- ^ 'pldscsccPayload'
    -> ProjectsLocationsDataSetsConsentStoresConsentsCreate
projectsLocationsDataSetsConsentStoresConsentsCreate pPldscsccParent_ pPldscsccPayload_ =
  ProjectsLocationsDataSetsConsentStoresConsentsCreate'
    { _pldscsccParent = pPldscsccParent_
    , _pldscsccXgafv = Nothing
    , _pldscsccUploadProtocol = Nothing
    , _pldscsccAccessToken = Nothing
    , _pldscsccUploadType = Nothing
    , _pldscsccPayload = pPldscsccPayload_
    , _pldscsccCallback = Nothing
    }


-- | Required. Name of the consent store.
pldscsccParent :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsCreate Text
pldscsccParent
  = lens _pldscsccParent
      (\ s a -> s{_pldscsccParent = a})

-- | V1 error format.
pldscsccXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsCreate (Maybe Xgafv)
pldscsccXgafv
  = lens _pldscsccXgafv
      (\ s a -> s{_pldscsccXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscsccUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsCreate (Maybe Text)
pldscsccUploadProtocol
  = lens _pldscsccUploadProtocol
      (\ s a -> s{_pldscsccUploadProtocol = a})

-- | OAuth access token.
pldscsccAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsCreate (Maybe Text)
pldscsccAccessToken
  = lens _pldscsccAccessToken
      (\ s a -> s{_pldscsccAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscsccUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsCreate (Maybe Text)
pldscsccUploadType
  = lens _pldscsccUploadType
      (\ s a -> s{_pldscsccUploadType = a})

-- | Multipart request metadata.
pldscsccPayload :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsCreate Consent
pldscsccPayload
  = lens _pldscsccPayload
      (\ s a -> s{_pldscsccPayload = a})

-- | JSONP
pldscsccCallback :: Lens' ProjectsLocationsDataSetsConsentStoresConsentsCreate (Maybe Text)
pldscsccCallback
  = lens _pldscsccCallback
      (\ s a -> s{_pldscsccCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresConsentsCreate
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresConsentsCreate
             = Consent
        type Scopes
               ProjectsLocationsDataSetsConsentStoresConsentsCreate
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresConsentsCreate'{..}
          = go _pldscsccParent _pldscsccXgafv
              _pldscsccUploadProtocol
              _pldscsccAccessToken
              _pldscsccUploadType
              _pldscsccCallback
              (Just AltJSON)
              _pldscsccPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresConsentsCreateResource)
                      mempty
