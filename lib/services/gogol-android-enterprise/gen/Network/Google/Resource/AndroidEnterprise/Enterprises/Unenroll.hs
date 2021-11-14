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
-- Module      : Network.Google.Resource.AndroidEnterprise.Enterprises.Unenroll
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Unenrolls an enterprise from the calling EMM.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.enterprises.unenroll@.
module Network.Google.Resource.AndroidEnterprise.Enterprises.Unenroll
    (
    -- * REST Resource
      EnterprisesUnenrollResource

    -- * Creating a Request
    , enterprisesUnenroll
    , EnterprisesUnenroll

    -- * Request Lenses
    , euuXgafv
    , euuUploadProtocol
    , euuEnterpriseId
    , euuAccessToken
    , euuUploadType
    , euuCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.enterprises.unenroll@ method which the
-- 'EnterprisesUnenroll' request conforms to.
type EnterprisesUnenrollResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "unenroll" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Unenrolls an enterprise from the calling EMM.
--
-- /See:/ 'enterprisesUnenroll' smart constructor.
data EnterprisesUnenroll =
  EnterprisesUnenroll'
    { _euuXgafv :: !(Maybe Xgafv)
    , _euuUploadProtocol :: !(Maybe Text)
    , _euuEnterpriseId :: !Text
    , _euuAccessToken :: !(Maybe Text)
    , _euuUploadType :: !(Maybe Text)
    , _euuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'EnterprisesUnenroll' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'euuXgafv'
--
-- * 'euuUploadProtocol'
--
-- * 'euuEnterpriseId'
--
-- * 'euuAccessToken'
--
-- * 'euuUploadType'
--
-- * 'euuCallback'
enterprisesUnenroll
    :: Text -- ^ 'euuEnterpriseId'
    -> EnterprisesUnenroll
enterprisesUnenroll pEuuEnterpriseId_ =
  EnterprisesUnenroll'
    { _euuXgafv = Nothing
    , _euuUploadProtocol = Nothing
    , _euuEnterpriseId = pEuuEnterpriseId_
    , _euuAccessToken = Nothing
    , _euuUploadType = Nothing
    , _euuCallback = Nothing
    }


-- | V1 error format.
euuXgafv :: Lens' EnterprisesUnenroll (Maybe Xgafv)
euuXgafv = lens _euuXgafv (\ s a -> s{_euuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
euuUploadProtocol :: Lens' EnterprisesUnenroll (Maybe Text)
euuUploadProtocol
  = lens _euuUploadProtocol
      (\ s a -> s{_euuUploadProtocol = a})

-- | The ID of the enterprise.
euuEnterpriseId :: Lens' EnterprisesUnenroll Text
euuEnterpriseId
  = lens _euuEnterpriseId
      (\ s a -> s{_euuEnterpriseId = a})

-- | OAuth access token.
euuAccessToken :: Lens' EnterprisesUnenroll (Maybe Text)
euuAccessToken
  = lens _euuAccessToken
      (\ s a -> s{_euuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
euuUploadType :: Lens' EnterprisesUnenroll (Maybe Text)
euuUploadType
  = lens _euuUploadType
      (\ s a -> s{_euuUploadType = a})

-- | JSONP
euuCallback :: Lens' EnterprisesUnenroll (Maybe Text)
euuCallback
  = lens _euuCallback (\ s a -> s{_euuCallback = a})

instance GoogleRequest EnterprisesUnenroll where
        type Rs EnterprisesUnenroll = ()
        type Scopes EnterprisesUnenroll =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EnterprisesUnenroll'{..}
          = go _euuEnterpriseId _euuXgafv _euuUploadProtocol
              _euuAccessToken
              _euuUploadType
              _euuCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EnterprisesUnenrollResource)
                      mempty
