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
-- Module      : Network.Google.Resource.DLP.Projects.Content.Reidentify
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Re-identifies content that has been de-identified. See
-- https:\/\/cloud.google.com\/dlp\/docs\/pseudonymization#re-identification_in_free_text_code_example
-- to learn more.
--
-- /See:/ <https://cloud.google.com/dlp/docs/ Cloud Data Loss Prevention (DLP) API Reference> for @dlp.projects.content.reidentify@.
module Network.Google.Resource.DLP.Projects.Content.Reidentify
    (
    -- * REST Resource
      ProjectsContentReidentifyResource

    -- * Creating a Request
    , projectsContentReidentify
    , ProjectsContentReidentify

    -- * Request Lenses
    , pcrParent
    , pcrXgafv
    , pcrUploadProtocol
    , pcrAccessToken
    , pcrUploadType
    , pcrPayload
    , pcrCallback
    ) where

import Network.Google.DLP.Types
import Network.Google.Prelude

-- | A resource alias for @dlp.projects.content.reidentify@ method which the
-- 'ProjectsContentReidentify' request conforms to.
type ProjectsContentReidentifyResource =
     "v2" :>
       Capture "parent" Text :>
         "content:reidentify" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON]
                         GooglePrivacyDlpV2ReidentifyContentRequest
                         :>
                         Post '[JSON]
                           GooglePrivacyDlpV2ReidentifyContentResponse

-- | Re-identifies content that has been de-identified. See
-- https:\/\/cloud.google.com\/dlp\/docs\/pseudonymization#re-identification_in_free_text_code_example
-- to learn more.
--
-- /See:/ 'projectsContentReidentify' smart constructor.
data ProjectsContentReidentify =
  ProjectsContentReidentify'
    { _pcrParent :: !Text
    , _pcrXgafv :: !(Maybe Xgafv)
    , _pcrUploadProtocol :: !(Maybe Text)
    , _pcrAccessToken :: !(Maybe Text)
    , _pcrUploadType :: !(Maybe Text)
    , _pcrPayload :: !GooglePrivacyDlpV2ReidentifyContentRequest
    , _pcrCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsContentReidentify' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pcrParent'
--
-- * 'pcrXgafv'
--
-- * 'pcrUploadProtocol'
--
-- * 'pcrAccessToken'
--
-- * 'pcrUploadType'
--
-- * 'pcrPayload'
--
-- * 'pcrCallback'
projectsContentReidentify
    :: Text -- ^ 'pcrParent'
    -> GooglePrivacyDlpV2ReidentifyContentRequest -- ^ 'pcrPayload'
    -> ProjectsContentReidentify
projectsContentReidentify pPcrParent_ pPcrPayload_ =
  ProjectsContentReidentify'
    { _pcrParent = pPcrParent_
    , _pcrXgafv = Nothing
    , _pcrUploadProtocol = Nothing
    , _pcrAccessToken = Nothing
    , _pcrUploadType = Nothing
    , _pcrPayload = pPcrPayload_
    , _pcrCallback = Nothing
    }


-- | Required. Parent resource name. The format of this value varies
-- depending on whether you have [specified a processing
-- location](https:\/\/cloud.google.com\/dlp\/docs\/specifying-location): +
-- Projects scope, location specified:
-- \`projects\/\`PROJECT_ID\`\/locations\/\`LOCATION_ID + Projects scope,
-- no location specified (defaults to global): \`projects\/\`PROJECT_ID The
-- following example \`parent\` string specifies a parent project with the
-- identifier \`example-project\`, and specifies the \`europe-west3\`
-- location for processing data:
-- parent=projects\/example-project\/locations\/europe-west3
pcrParent :: Lens' ProjectsContentReidentify Text
pcrParent
  = lens _pcrParent (\ s a -> s{_pcrParent = a})

-- | V1 error format.
pcrXgafv :: Lens' ProjectsContentReidentify (Maybe Xgafv)
pcrXgafv = lens _pcrXgafv (\ s a -> s{_pcrXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pcrUploadProtocol :: Lens' ProjectsContentReidentify (Maybe Text)
pcrUploadProtocol
  = lens _pcrUploadProtocol
      (\ s a -> s{_pcrUploadProtocol = a})

-- | OAuth access token.
pcrAccessToken :: Lens' ProjectsContentReidentify (Maybe Text)
pcrAccessToken
  = lens _pcrAccessToken
      (\ s a -> s{_pcrAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pcrUploadType :: Lens' ProjectsContentReidentify (Maybe Text)
pcrUploadType
  = lens _pcrUploadType
      (\ s a -> s{_pcrUploadType = a})

-- | Multipart request metadata.
pcrPayload :: Lens' ProjectsContentReidentify GooglePrivacyDlpV2ReidentifyContentRequest
pcrPayload
  = lens _pcrPayload (\ s a -> s{_pcrPayload = a})

-- | JSONP
pcrCallback :: Lens' ProjectsContentReidentify (Maybe Text)
pcrCallback
  = lens _pcrCallback (\ s a -> s{_pcrCallback = a})

instance GoogleRequest ProjectsContentReidentify
         where
        type Rs ProjectsContentReidentify =
             GooglePrivacyDlpV2ReidentifyContentResponse
        type Scopes ProjectsContentReidentify =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsContentReidentify'{..}
          = go _pcrParent _pcrXgafv _pcrUploadProtocol
              _pcrAccessToken
              _pcrUploadType
              _pcrCallback
              (Just AltJSON)
              _pcrPayload
              dLPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsContentReidentifyResource)
                      mempty
