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
-- Module      : Network.Google.Resource.DLP.Organizations.InspectTemplates.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.organizations.inspectTemplates.get@.
module Network.Google.Resource.DLP.Organizations.InspectTemplates.Get
    (
    -- * REST Resource
      OrganizationsInspectTemplatesGetResource

    -- * Creating a Request
    , organizationsInspectTemplatesGet
    , OrganizationsInspectTemplatesGet

    -- * Request Lenses
    , oitgXgafv
    , oitgUploadProtocol
    , oitgAccessToken
    , oitgUploadType
    , oitgName
    , oitgCallback
    ) where

import           Network.Google.DLP.Types
import           Network.Google.Prelude

-- | A resource alias for @dlp.organizations.inspectTemplates.get@ method which the
-- 'OrganizationsInspectTemplatesGet' request conforms to.
type OrganizationsInspectTemplatesGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] GooglePrivacyDlpV2InspectTemplate

-- | Gets an InspectTemplate. See
-- https:\/\/cloud.google.com\/dlp\/docs\/creating-templates to learn more.
--
-- /See:/ 'organizationsInspectTemplatesGet' smart constructor.
data OrganizationsInspectTemplatesGet =
  OrganizationsInspectTemplatesGet'
    { _oitgXgafv          :: !(Maybe Xgafv)
    , _oitgUploadProtocol :: !(Maybe Text)
    , _oitgAccessToken    :: !(Maybe Text)
    , _oitgUploadType     :: !(Maybe Text)
    , _oitgName           :: !Text
    , _oitgCallback       :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrganizationsInspectTemplatesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oitgXgafv'
--
-- * 'oitgUploadProtocol'
--
-- * 'oitgAccessToken'
--
-- * 'oitgUploadType'
--
-- * 'oitgName'
--
-- * 'oitgCallback'
organizationsInspectTemplatesGet
    :: Text -- ^ 'oitgName'
    -> OrganizationsInspectTemplatesGet
organizationsInspectTemplatesGet pOitgName_ =
  OrganizationsInspectTemplatesGet'
    { _oitgXgafv = Nothing
    , _oitgUploadProtocol = Nothing
    , _oitgAccessToken = Nothing
    , _oitgUploadType = Nothing
    , _oitgName = pOitgName_
    , _oitgCallback = Nothing
    }


-- | V1 error format.
oitgXgafv :: Lens' OrganizationsInspectTemplatesGet (Maybe Xgafv)
oitgXgafv
  = lens _oitgXgafv (\ s a -> s{_oitgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oitgUploadProtocol :: Lens' OrganizationsInspectTemplatesGet (Maybe Text)
oitgUploadProtocol
  = lens _oitgUploadProtocol
      (\ s a -> s{_oitgUploadProtocol = a})

-- | OAuth access token.
oitgAccessToken :: Lens' OrganizationsInspectTemplatesGet (Maybe Text)
oitgAccessToken
  = lens _oitgAccessToken
      (\ s a -> s{_oitgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oitgUploadType :: Lens' OrganizationsInspectTemplatesGet (Maybe Text)
oitgUploadType
  = lens _oitgUploadType
      (\ s a -> s{_oitgUploadType = a})

-- | Resource name of the organization and inspectTemplate to be read, for
-- example \`organizations\/433245324\/inspectTemplates\/432452342\` or
-- projects\/project-id\/inspectTemplates\/432452342.
oitgName :: Lens' OrganizationsInspectTemplatesGet Text
oitgName = lens _oitgName (\ s a -> s{_oitgName = a})

-- | JSONP
oitgCallback :: Lens' OrganizationsInspectTemplatesGet (Maybe Text)
oitgCallback
  = lens _oitgCallback (\ s a -> s{_oitgCallback = a})

instance GoogleRequest
           OrganizationsInspectTemplatesGet
         where
        type Rs OrganizationsInspectTemplatesGet =
             GooglePrivacyDlpV2InspectTemplate
        type Scopes OrganizationsInspectTemplatesGet =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient OrganizationsInspectTemplatesGet'{..}
          = go _oitgName _oitgXgafv _oitgUploadProtocol
              _oitgAccessToken
              _oitgUploadType
              _oitgCallback
              (Just AltJSON)
              dLPService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy OrganizationsInspectTemplatesGetResource)
                      mempty
