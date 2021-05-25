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
-- Module      : Network.Google.Resource.AndroidEnterprise.Grouplicenses.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details of an enterprise\'s group license for a product.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.grouplicenses.get@.
module Network.Google.Resource.AndroidEnterprise.Grouplicenses.Get
    (
    -- * REST Resource
      GrouplicensesGetResource

    -- * Creating a Request
    , grouplicensesGet
    , GrouplicensesGet

    -- * Request Lenses
    , ggXgafv
    , ggUploadProtocol
    , ggEnterpriseId
    , ggAccessToken
    , ggUploadType
    , ggGroupLicenseId
    , ggCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.grouplicenses.get@ method which the
-- 'GrouplicensesGet' request conforms to.
type GrouplicensesGetResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "groupLicenses" :>
               Capture "groupLicenseId" Text :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Get '[JSON] GroupLicense

-- | Retrieves details of an enterprise\'s group license for a product.
--
-- /See:/ 'grouplicensesGet' smart constructor.
data GrouplicensesGet =
  GrouplicensesGet'
    { _ggXgafv :: !(Maybe Xgafv)
    , _ggUploadProtocol :: !(Maybe Text)
    , _ggEnterpriseId :: !Text
    , _ggAccessToken :: !(Maybe Text)
    , _ggUploadType :: !(Maybe Text)
    , _ggGroupLicenseId :: !Text
    , _ggCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GrouplicensesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggXgafv'
--
-- * 'ggUploadProtocol'
--
-- * 'ggEnterpriseId'
--
-- * 'ggAccessToken'
--
-- * 'ggUploadType'
--
-- * 'ggGroupLicenseId'
--
-- * 'ggCallback'
grouplicensesGet
    :: Text -- ^ 'ggEnterpriseId'
    -> Text -- ^ 'ggGroupLicenseId'
    -> GrouplicensesGet
grouplicensesGet pGgEnterpriseId_ pGgGroupLicenseId_ =
  GrouplicensesGet'
    { _ggXgafv = Nothing
    , _ggUploadProtocol = Nothing
    , _ggEnterpriseId = pGgEnterpriseId_
    , _ggAccessToken = Nothing
    , _ggUploadType = Nothing
    , _ggGroupLicenseId = pGgGroupLicenseId_
    , _ggCallback = Nothing
    }


-- | V1 error format.
ggXgafv :: Lens' GrouplicensesGet (Maybe Xgafv)
ggXgafv = lens _ggXgafv (\ s a -> s{_ggXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ggUploadProtocol :: Lens' GrouplicensesGet (Maybe Text)
ggUploadProtocol
  = lens _ggUploadProtocol
      (\ s a -> s{_ggUploadProtocol = a})

-- | The ID of the enterprise.
ggEnterpriseId :: Lens' GrouplicensesGet Text
ggEnterpriseId
  = lens _ggEnterpriseId
      (\ s a -> s{_ggEnterpriseId = a})

-- | OAuth access token.
ggAccessToken :: Lens' GrouplicensesGet (Maybe Text)
ggAccessToken
  = lens _ggAccessToken
      (\ s a -> s{_ggAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ggUploadType :: Lens' GrouplicensesGet (Maybe Text)
ggUploadType
  = lens _ggUploadType (\ s a -> s{_ggUploadType = a})

-- | The ID of the product the group license is for, e.g.
-- \"app:com.google.android.gm\".
ggGroupLicenseId :: Lens' GrouplicensesGet Text
ggGroupLicenseId
  = lens _ggGroupLicenseId
      (\ s a -> s{_ggGroupLicenseId = a})

-- | JSONP
ggCallback :: Lens' GrouplicensesGet (Maybe Text)
ggCallback
  = lens _ggCallback (\ s a -> s{_ggCallback = a})

instance GoogleRequest GrouplicensesGet where
        type Rs GrouplicensesGet = GroupLicense
        type Scopes GrouplicensesGet =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient GrouplicensesGet'{..}
          = go _ggEnterpriseId _ggGroupLicenseId _ggXgafv
              _ggUploadProtocol
              _ggAccessToken
              _ggUploadType
              _ggCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy GrouplicensesGetResource)
                      mempty
