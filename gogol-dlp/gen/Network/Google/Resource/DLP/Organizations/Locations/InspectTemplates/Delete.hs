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
-- Module      : Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.locations.inspectTemplates.delete@.
module Network.Google.Resource.DLP.Organizations.Locations.InspectTemplates.Delete
    (
    -- * REST Resource
      OrganizationsLocationsInspectTemplatesDeleteResource

    -- * Creating a Request
    , organizationsLocationsInspectTemplatesDelete
    , OrganizationsLocationsInspectTemplatesDelete

    -- * Request Lenses
    , olitdXgafv
    , olitdUploadProtocol
    , olitdAccessToken
    , olitdUploadType
    , olitdName
    , olitdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.locations.inspectTemplates.delete@ method which the
-- 'OrganizationsLocationsInspectTemplatesDelete' request conforms to.
type OrganizationsLocationsInspectTemplatesDeleteResource
     =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'organizationsLocationsInspectTemplatesDelete' smart constructor.
data OrganizationsLocationsInspectTemplatesDelete =
  OrganizationsLocationsInspectTemplatesDelete'
    { _olitdXgafv :: !(Maybe Xgafv)
    , _olitdUploadProtocol :: !(Maybe Text)
    , _olitdAccessToken :: !(Maybe Text)
    , _olitdUploadType :: !(Maybe Text)
    , _olitdName :: !Text
    , _olitdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsLocationsInspectTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olitdXgafv'
--
-- * 'olitdUploadProtocol'
--
-- * 'olitdAccessToken'
--
-- * 'olitdUploadType'
--
-- * 'olitdName'
--
-- * 'olitdCallback'
organizationsLocationsInspectTemplatesDelete
    :: Text -- ^ 'olitdName'
    -> OrganizationsLocationsInspectTemplatesDelete
organizationsLocationsInspectTemplatesDelete pOlitdName_ =
  OrganizationsLocationsInspectTemplatesDelete'
    { _olitdXgafv = Nothing
    , _olitdUploadProtocol = Nothing
    , _olitdAccessToken = Nothing
    , _olitdUploadType = Nothing
    , _olitdName = pOlitdName_
    , _olitdCallback = Nothing
    }


-- | V1 error format.
olitdXgafv :: Lens' OrganizationsLocationsInspectTemplatesDelete (Maybe Xgafv)
olitdXgafv
  = lens _olitdXgafv (\ s a -> s{_olitdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
olitdUploadProtocol :: Lens' OrganizationsLocationsInspectTemplatesDelete (Maybe Text)
olitdUploadProtocol
  = lens _olitdUploadProtocol
      (\ s a -> s{_olitdUploadProtocol = a})

-- | OAuth access token.
olitdAccessToken :: Lens' OrganizationsLocationsInspectTemplatesDelete (Maybe Text)
olitdAccessToken
  = lens _olitdAccessToken
      (\ s a -> s{_olitdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
olitdUploadType :: Lens' OrganizationsLocationsInspectTemplatesDelete (Maybe Text)
olitdUploadType
  = lens _olitdUploadType
      (\ s a -> s{_olitdUploadType = a})

-- | Required. Resource name of the organization and inspectTemplate to be
-- deleted, for example
-- \`organizations\/433245324\/inspectTemplates\/432452342\` or
-- projects\/project-id\/inspectTemplates\/432452342.
olitdName :: Lens' OrganizationsLocationsInspectTemplatesDelete Text
olitdName
  = lens _olitdName (\ s a -> s{_olitdName = a})

-- | JSONP
olitdCallback :: Lens' OrganizationsLocationsInspectTemplatesDelete (Maybe Text)
olitdCallback
  = lens _olitdCallback
      (\ s a -> s{_olitdCallback = a})

instance GoogleRequest
           OrganizationsLocationsInspectTemplatesDelete
         where
        type Rs OrganizationsLocationsInspectTemplatesDelete
             = GoogleProtobufEmpty
        type Scopes
               OrganizationsLocationsInspectTemplatesDelete
             = '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsLocationsInspectTemplatesDelete'{..}
          = go _olitdName _olitdXgafv _olitdUploadProtocol
              _olitdAccessToken
              _olitdUploadType
              _olitdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           OrganizationsLocationsInspectTemplatesDeleteResource)
                      mempty
