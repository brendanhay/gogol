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
-- Module      : Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.EvaluateUserConsents
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Evaluates the user\'s Consents for all matching User data mappings.
-- Note: User data mappings are indexed asynchronously, which can cause a
-- slight delay between the time mappings are created or updated and when
-- they are included in EvaluateUserConsents results.
--
-- /See:/ <https://cloud.google.com/healthcare Cloud Healthcare API Reference> for @healthcare.projects.locations.datasets.consentStores.evaluateUserConsents@.
module Network.Google.Resource.Healthcare.Projects.Locations.DataSets.ConsentStores.EvaluateUserConsents
    (
    -- * REST Resource
      ProjectsLocationsDataSetsConsentStoresEvaluateUserConsentsResource

    -- * Creating a Request
    , projectsLocationsDataSetsConsentStoresEvaluateUserConsents
    , ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents

    -- * Request Lenses
    , pldscseucXgafv
    , pldscseucUploadProtocol
    , pldscseucAccessToken
    , pldscseucUploadType
    , pldscseucPayload
    , pldscseucConsentStore
    , pldscseucCallback
    ) where

import Network.Google.Healthcare.Types
import Network.Google.Prelude

-- | A resource alias for @healthcare.projects.locations.datasets.consentStores.evaluateUserConsents@ method which the
-- 'ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents' request conforms to.
type ProjectsLocationsDataSetsConsentStoresEvaluateUserConsentsResource
     =
     "v1" :>
       CaptureMode "consentStore" "evaluateUserConsents"
         Text
         :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] EvaluateUserConsentsRequest :>
                       Post '[JSON] EvaluateUserConsentsResponse

-- | Evaluates the user\'s Consents for all matching User data mappings.
-- Note: User data mappings are indexed asynchronously, which can cause a
-- slight delay between the time mappings are created or updated and when
-- they are included in EvaluateUserConsents results.
--
-- /See:/ 'projectsLocationsDataSetsConsentStoresEvaluateUserConsents' smart constructor.
data ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents =
  ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents'
    { _pldscseucXgafv :: !(Maybe Xgafv)
    , _pldscseucUploadProtocol :: !(Maybe Text)
    , _pldscseucAccessToken :: !(Maybe Text)
    , _pldscseucUploadType :: !(Maybe Text)
    , _pldscseucPayload :: !EvaluateUserConsentsRequest
    , _pldscseucConsentStore :: !Text
    , _pldscseucCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pldscseucXgafv'
--
-- * 'pldscseucUploadProtocol'
--
-- * 'pldscseucAccessToken'
--
-- * 'pldscseucUploadType'
--
-- * 'pldscseucPayload'
--
-- * 'pldscseucConsentStore'
--
-- * 'pldscseucCallback'
projectsLocationsDataSetsConsentStoresEvaluateUserConsents
    :: EvaluateUserConsentsRequest -- ^ 'pldscseucPayload'
    -> Text -- ^ 'pldscseucConsentStore'
    -> ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents
projectsLocationsDataSetsConsentStoresEvaluateUserConsents pPldscseucPayload_ pPldscseucConsentStore_ =
  ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents'
    { _pldscseucXgafv = Nothing
    , _pldscseucUploadProtocol = Nothing
    , _pldscseucAccessToken = Nothing
    , _pldscseucUploadType = Nothing
    , _pldscseucPayload = pPldscseucPayload_
    , _pldscseucConsentStore = pPldscseucConsentStore_
    , _pldscseucCallback = Nothing
    }


-- | V1 error format.
pldscseucXgafv :: Lens' ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents (Maybe Xgafv)
pldscseucXgafv
  = lens _pldscseucXgafv
      (\ s a -> s{_pldscseucXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pldscseucUploadProtocol :: Lens' ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents (Maybe Text)
pldscseucUploadProtocol
  = lens _pldscseucUploadProtocol
      (\ s a -> s{_pldscseucUploadProtocol = a})

-- | OAuth access token.
pldscseucAccessToken :: Lens' ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents (Maybe Text)
pldscseucAccessToken
  = lens _pldscseucAccessToken
      (\ s a -> s{_pldscseucAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pldscseucUploadType :: Lens' ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents (Maybe Text)
pldscseucUploadType
  = lens _pldscseucUploadType
      (\ s a -> s{_pldscseucUploadType = a})

-- | Multipart request metadata.
pldscseucPayload :: Lens' ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents EvaluateUserConsentsRequest
pldscseucPayload
  = lens _pldscseucPayload
      (\ s a -> s{_pldscseucPayload = a})

-- | Required. Name of the consent store to retrieve User data mappings from.
pldscseucConsentStore :: Lens' ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents Text
pldscseucConsentStore
  = lens _pldscseucConsentStore
      (\ s a -> s{_pldscseucConsentStore = a})

-- | JSONP
pldscseucCallback :: Lens' ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents (Maybe Text)
pldscseucCallback
  = lens _pldscseucCallback
      (\ s a -> s{_pldscseucCallback = a})

instance GoogleRequest
           ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents
         where
        type Rs
               ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents
             = EvaluateUserConsentsResponse
        type Scopes
               ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          ProjectsLocationsDataSetsConsentStoresEvaluateUserConsents'{..}
          = go _pldscseucConsentStore _pldscseucXgafv
              _pldscseucUploadProtocol
              _pldscseucAccessToken
              _pldscseucUploadType
              _pldscseucCallback
              (Just AltJSON)
              _pldscseucPayload
              healthcareService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ProjectsLocationsDataSetsConsentStoresEvaluateUserConsentsResource)
                      mempty
