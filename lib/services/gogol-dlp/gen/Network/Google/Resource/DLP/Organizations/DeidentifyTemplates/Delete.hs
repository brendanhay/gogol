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
-- Module      : Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.deidentifyTemplates.delete@.
module Network.Google.Resource.DLP.Organizations.DeidentifyTemplates.Delete
    (
    -- * REST Resource
      OrganizationsDeidentifyTemplatesDeleteResource

    -- * Creating a Request
    , organizationsDeidentifyTemplatesDelete
    , OrganizationsDeidentifyTemplatesDelete

    -- * Request Lenses
    , odtdXgafv
    , odtdUploadProtocol
    , odtdAccessToken
    , odtdUploadType
    , odtdName
    , odtdCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.organizations.deidentifyTemplates.delete@ method which the
-- 'OrganizationsDeidentifyTemplatesDelete' request conforms to.
type OrganizationsDeidentifyTemplatesDeleteResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Delete '[JSON] GoogleProtobufEmpty

-- | Deletes a DeidentifyTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates-deid to learn
-- more.
--
-- /See:/ 'organizationsDeidentifyTemplatesDelete' smart constructor.
data OrganizationsDeidentifyTemplatesDelete =
  OrganizationsDeidentifyTemplatesDelete'
    { _odtdXgafv :: !(Maybe Xgafv)
    , _odtdUploadProtocol :: !(Maybe Text)
    , _odtdAccessToken :: !(Maybe Text)
    , _odtdUploadType :: !(Maybe Text)
    , _odtdName :: !Text
    , _odtdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsDeidentifyTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'odtdXgafv'
--
-- * 'odtdUploadProtocol'
--
-- * 'odtdAccessToken'
--
-- * 'odtdUploadType'
--
-- * 'odtdName'
--
-- * 'odtdCallback'
organizationsDeidentifyTemplatesDelete
    :: Text -- ^ 'odtdName'
    -> OrganizationsDeidentifyTemplatesDelete
organizationsDeidentifyTemplatesDelete pOdtdName_ =
  OrganizationsDeidentifyTemplatesDelete'
    { _odtdXgafv = Nothing
    , _odtdUploadProtocol = Nothing
    , _odtdAccessToken = Nothing
    , _odtdUploadType = Nothing
    , _odtdName = pOdtdName_
    , _odtdCallback = Nothing
    }


-- | V1 error format.
odtdXgafv :: Lens' OrganizationsDeidentifyTemplatesDelete (Maybe Xgafv)
odtdXgafv
  = lens _odtdXgafv (\ s a -> s{_odtdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
odtdUploadProtocol :: Lens' OrganizationsDeidentifyTemplatesDelete (Maybe Text)
odtdUploadProtocol
  = lens _odtdUploadProtocol
      (\ s a -> s{_odtdUploadProtocol = a})

-- | OAuth access token.
odtdAccessToken :: Lens' OrganizationsDeidentifyTemplatesDelete (Maybe Text)
odtdAccessToken
  = lens _odtdAccessToken
      (\ s a -> s{_odtdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
odtdUploadType :: Lens' OrganizationsDeidentifyTemplatesDelete (Maybe Text)
odtdUploadType
  = lens _odtdUploadType
      (\ s a -> s{_odtdUploadType = a})

-- | Required. Resource name of the organization and deidentify template to
-- be deleted, for example
-- \`organizations\/433245324\/deidentifyTemplates\/432452342\` or
-- projects\/project-id\/deidentifyTemplates\/432452342.
odtdName :: Lens' OrganizationsDeidentifyTemplatesDelete Text
odtdName = lens _odtdName (\ s a -> s{_odtdName = a})

-- | JSONP
odtdCallback :: Lens' OrganizationsDeidentifyTemplatesDelete (Maybe Text)
odtdCallback
  = lens _odtdCallback (\ s a -> s{_odtdCallback = a})

instance GoogleRequest
           OrganizationsDeidentifyTemplatesDelete
         where
        type Rs OrganizationsDeidentifyTemplatesDelete =
             GoogleProtobufEmpty
        type Scopes OrganizationsDeidentifyTemplatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsDeidentifyTemplatesDelete'{..}
          = go _odtdName _odtdXgafv _odtdUploadProtocol
              _odtdAccessToken
              _odtdUploadType
              _odtdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsDeidentifyTemplatesDeleteResource)
                      mempty
