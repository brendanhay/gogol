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
-- Module      : Network.Google.Resource.Logging.Exclusions.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the description of an exclusion.
--
-- /See:/ <https://cloud.google.com/logging/docs/ Cloud Logging API Reference> for @logging.exclusions.get@.
module Network.Google.Resource.Logging.Exclusions.Get
    (
    -- * REST Resource
      ExclusionsGetResource

    -- * Creating a Request
    , exclusionsGet
    , ExclusionsGet

    -- * Request Lenses
    , egXgafv
    , egUploadProtocol
    , egAccessToken
    , egUploadType
    , egName
    , egCallback
    ) where

import Network.Google.Logging.Types
import Network.Google.Prelude

-- | A resource alias for @logging.exclusions.get@ method which the
-- 'ExclusionsGet' request conforms to.
type ExclusionsGetResource =
     "v2" :>
       Capture "name" Text :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "upload_protocol" Text :>
             QueryParam "access_token" Text :>
               QueryParam "uploadType" Text :>
                 QueryParam "callback" Text :>
                   QueryParam "alt" AltJSON :> Get '[JSON] LogExclusion

-- | Gets the description of an exclusion.
--
-- /See:/ 'exclusionsGet' smart constructor.
data ExclusionsGet =
  ExclusionsGet'
    { _egXgafv :: !(Maybe Xgafv)
    , _egUploadProtocol :: !(Maybe Text)
    , _egAccessToken :: !(Maybe Text)
    , _egUploadType :: !(Maybe Text)
    , _egName :: !Text
    , _egCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ExclusionsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'egXgafv'
--
-- * 'egUploadProtocol'
--
-- * 'egAccessToken'
--
-- * 'egUploadType'
--
-- * 'egName'
--
-- * 'egCallback'
exclusionsGet
    :: Text -- ^ 'egName'
    -> ExclusionsGet
exclusionsGet pEgName_ =
  ExclusionsGet'
    { _egXgafv = Nothing
    , _egUploadProtocol = Nothing
    , _egAccessToken = Nothing
    , _egUploadType = Nothing
    , _egName = pEgName_
    , _egCallback = Nothing
    }


-- | V1 error format.
egXgafv :: Lens' ExclusionsGet (Maybe Xgafv)
egXgafv = lens _egXgafv (\ s a -> s{_egXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
egUploadProtocol :: Lens' ExclusionsGet (Maybe Text)
egUploadProtocol
  = lens _egUploadProtocol
      (\ s a -> s{_egUploadProtocol = a})

-- | OAuth access token.
egAccessToken :: Lens' ExclusionsGet (Maybe Text)
egAccessToken
  = lens _egAccessToken
      (\ s a -> s{_egAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
egUploadType :: Lens' ExclusionsGet (Maybe Text)
egUploadType
  = lens _egUploadType (\ s a -> s{_egUploadType = a})

-- | Required. The resource name of an existing exclusion:
-- \"projects\/[PROJECT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"organizations\/[ORGANIZATION_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"billingAccounts\/[BILLING_ACCOUNT_ID]\/exclusions\/[EXCLUSION_ID]\"
-- \"folders\/[FOLDER_ID]\/exclusions\/[EXCLUSION_ID]\" Example:
-- \"projects\/my-project-id\/exclusions\/my-exclusion-id\".
egName :: Lens' ExclusionsGet Text
egName = lens _egName (\ s a -> s{_egName = a})

-- | JSONP
egCallback :: Lens' ExclusionsGet (Maybe Text)
egCallback
  = lens _egCallback (\ s a -> s{_egCallback = a})

instance GoogleRequest ExclusionsGet where
        type Rs ExclusionsGet = LogExclusion
        type Scopes ExclusionsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/logging.admin",
               "https://www.googleapis.com/auth/logging.read"]
        requestClient ExclusionsGet'{..}
          = go _egName _egXgafv _egUploadProtocol
              _egAccessToken
              _egUploadType
              _egCallback
              (Just AltJSON)
              loggingService
          where go
                  = buildClient (Proxy :: Proxy ExclusionsGetResource)
                      mempty
