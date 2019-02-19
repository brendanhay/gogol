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
-- Module      : Network.Google.Resource.DLP.Organizations.InspectTemplates.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.inspectTemplates.delete@.
module Network.Google.Resource.DLP.Organizations.InspectTemplates.Delete
    (
    -- * REST Resource
      OrganizationsInspectTemplatesDeleteResource

    -- * Creating a Request
    , organizationsInspectTemplatesDelete
    , OrganizationsInspectTemplatesDelete

    -- * Request Lenses
    , oitdXgafv
    , oitdUploadProtocol
    , oitdAccessToken
    , oitdUploadType
    , oitdName
    , oitdCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.organizations.inspectTemplates.delete@ method which the
-- 'OrganizationsInspectTemplatesDelete' request conforms to.
type OrganizationsInspectTemplatesDeleteResource =
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
-- /See:/ 'organizationsInspectTemplatesDelete' smart constructor.
data OrganizationsInspectTemplatesDelete =
  OrganizationsInspectTemplatesDelete'
    { _oitdXgafv          :: !(Maybe Xgafv)
    , _oitdUploadProtocol :: !(Maybe Text)
    , _oitdAccessToken    :: !(Maybe Text)
    , _oitdUploadType     :: !(Maybe Text)
    , _oitdName           :: !Text
    , _oitdCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'OrganizationsInspectTemplatesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oitdXgafv'
--
-- * 'oitdUploadProtocol'
--
-- * 'oitdAccessToken'
--
-- * 'oitdUploadType'
--
-- * 'oitdName'
--
-- * 'oitdCallback'
organizationsInspectTemplatesDelete
    :: Text -- ^ 'oitdName'
    -> OrganizationsInspectTemplatesDelete
organizationsInspectTemplatesDelete pOitdName_ =
  OrganizationsInspectTemplatesDelete'
    { _oitdXgafv = Nothing
    , _oitdUploadProtocol = Nothing
    , _oitdAccessToken = Nothing
    , _oitdUploadType = Nothing
    , _oitdName = pOitdName_
    , _oitdCallback = Nothing
    }

-- | V1 error format.
oitdXgafv :: Lens' OrganizationsInspectTemplatesDelete (Maybe Xgafv)
oitdXgafv
  = lens _oitdXgafv (\ s a -> s{_oitdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oitdUploadProtocol :: Lens' OrganizationsInspectTemplatesDelete (Maybe Text)
oitdUploadProtocol
  = lens _oitdUploadProtocol
      (\ s a -> s{_oitdUploadProtocol = a})

-- | OAuth access token.
oitdAccessToken :: Lens' OrganizationsInspectTemplatesDelete (Maybe Text)
oitdAccessToken
  = lens _oitdAccessToken
      (\ s a -> s{_oitdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oitdUploadType :: Lens' OrganizationsInspectTemplatesDelete (Maybe Text)
oitdUploadType
  = lens _oitdUploadType
      (\ s a -> s{_oitdUploadType = a})

-- | Resource name of the organization and inspectTemplate to be deleted, for
-- example \`organizations\/433245324\/inspectTemplates\/432452342\` or
-- projects\/project-id\/inspectTemplates\/432452342.
oitdName :: Lens' OrganizationsInspectTemplatesDelete Text
oitdName = lens _oitdName (\ s a -> s{_oitdName = a})

-- | JSONP
oitdCallback :: Lens' OrganizationsInspectTemplatesDelete (Maybe Text)
oitdCallback
  = lens _oitdCallback (\ s a -> s{_oitdCallback = a})

instance GoogleRequest
           OrganizationsInspectTemplatesDelete
         where
        type Rs OrganizationsInspectTemplatesDelete =
             GoogleProtobufEmpty
        type Scopes OrganizationsInspectTemplatesDelete =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient
          OrganizationsInspectTemplatesDelete'{..}
          = go _oitdName _oitdXgafv _oitdUploadProtocol
              _oitdAccessToken
              _oitdUploadType
              _oitdCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsInspectTemplatesDeleteResource)
                      mempty
