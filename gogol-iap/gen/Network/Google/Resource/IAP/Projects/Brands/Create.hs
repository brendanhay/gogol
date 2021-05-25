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
-- Module      : Network.Google.Resource.IAP.Projects.Brands.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Constructs a new OAuth brand for the project if one does not exist. The
-- created brand is \"internal only\", meaning that OAuth clients created
-- under it only accept requests from users who belong to the same G Suite
-- organization as the project. The brand is created in an un-reviewed
-- status. NOTE: The \"internal only\" status can be manually changed in
-- the Google Cloud console. Requires that a brand does not already exist
-- for the project, and that the specified support email is owned by the
-- caller.
--
-- /See:/ <https://cloud.google.com/iap Cloud Identity-Aware Proxy API Reference> for @iap.projects.brands.create@.
module Network.Google.Resource.IAP.Projects.Brands.Create
    (
    -- * REST Resource
      ProjectsBrandsCreateResource

    -- * Creating a Request
    , projectsBrandsCreate
    , ProjectsBrandsCreate

    -- * Request Lenses
    , pbcParent
    , pbcXgafv
    , pbcUploadProtocol
    , pbcAccessToken
    , pbcUploadType
    , pbcPayload
    , pbcCallback
    ) where

import Network.Google.IAP.Types
import Network.Google.Prelude

-- | A resource alias for @iap.projects.brands.create@ method which the
-- 'ProjectsBrandsCreate' request conforms to.
type ProjectsBrandsCreateResource =
     "v1" :>
       Capture "parent" Text :>
         "brands" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] Brand :> Post '[JSON] Brand

-- | Constructs a new OAuth brand for the project if one does not exist. The
-- created brand is \"internal only\", meaning that OAuth clients created
-- under it only accept requests from users who belong to the same G Suite
-- organization as the project. The brand is created in an un-reviewed
-- status. NOTE: The \"internal only\" status can be manually changed in
-- the Google Cloud console. Requires that a brand does not already exist
-- for the project, and that the specified support email is owned by the
-- caller.
--
-- /See:/ 'projectsBrandsCreate' smart constructor.
data ProjectsBrandsCreate =
  ProjectsBrandsCreate'
    { _pbcParent :: !Text
    , _pbcXgafv :: !(Maybe Xgafv)
    , _pbcUploadProtocol :: !(Maybe Text)
    , _pbcAccessToken :: !(Maybe Text)
    , _pbcUploadType :: !(Maybe Text)
    , _pbcPayload :: !Brand
    , _pbcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ProjectsBrandsCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbcParent'
--
-- * 'pbcXgafv'
--
-- * 'pbcUploadProtocol'
--
-- * 'pbcAccessToken'
--
-- * 'pbcUploadType'
--
-- * 'pbcPayload'
--
-- * 'pbcCallback'
projectsBrandsCreate
    :: Text -- ^ 'pbcParent'
    -> Brand -- ^ 'pbcPayload'
    -> ProjectsBrandsCreate
projectsBrandsCreate pPbcParent_ pPbcPayload_ =
  ProjectsBrandsCreate'
    { _pbcParent = pPbcParent_
    , _pbcXgafv = Nothing
    , _pbcUploadProtocol = Nothing
    , _pbcAccessToken = Nothing
    , _pbcUploadType = Nothing
    , _pbcPayload = pPbcPayload_
    , _pbcCallback = Nothing
    }


-- | Required. GCP Project number\/id under which the brand is to be created.
-- In the following format: projects\/{project_number\/id}.
pbcParent :: Lens' ProjectsBrandsCreate Text
pbcParent
  = lens _pbcParent (\ s a -> s{_pbcParent = a})

-- | V1 error format.
pbcXgafv :: Lens' ProjectsBrandsCreate (Maybe Xgafv)
pbcXgafv = lens _pbcXgafv (\ s a -> s{_pbcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
pbcUploadProtocol :: Lens' ProjectsBrandsCreate (Maybe Text)
pbcUploadProtocol
  = lens _pbcUploadProtocol
      (\ s a -> s{_pbcUploadProtocol = a})

-- | OAuth access token.
pbcAccessToken :: Lens' ProjectsBrandsCreate (Maybe Text)
pbcAccessToken
  = lens _pbcAccessToken
      (\ s a -> s{_pbcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
pbcUploadType :: Lens' ProjectsBrandsCreate (Maybe Text)
pbcUploadType
  = lens _pbcUploadType
      (\ s a -> s{_pbcUploadType = a})

-- | Multipart request metadata.
pbcPayload :: Lens' ProjectsBrandsCreate Brand
pbcPayload
  = lens _pbcPayload (\ s a -> s{_pbcPayload = a})

-- | JSONP
pbcCallback :: Lens' ProjectsBrandsCreate (Maybe Text)
pbcCallback
  = lens _pbcCallback (\ s a -> s{_pbcCallback = a})

instance GoogleRequest ProjectsBrandsCreate where
        type Rs ProjectsBrandsCreate = Brand
        type Scopes ProjectsBrandsCreate =
             '["https://www.googleapis.com/auth/cloud-platform"]
        requestClient ProjectsBrandsCreate'{..}
          = go _pbcParent _pbcXgafv _pbcUploadProtocol
              _pbcAccessToken
              _pbcUploadType
              _pbcCallback
              (Just AltJSON)
              _pbcPayload
              iAPService
          where go
                  = buildClient
                      (Proxy :: Proxy ProjectsBrandsCreateResource)
                      mempty
