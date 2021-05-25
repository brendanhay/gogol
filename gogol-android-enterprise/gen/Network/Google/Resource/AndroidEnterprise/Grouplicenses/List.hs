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
-- Module      : Network.Google.Resource.AndroidEnterprise.Grouplicenses.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves IDs of all products for which the enterprise has a group
-- license.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.grouplicenses.list@.
module Network.Google.Resource.AndroidEnterprise.Grouplicenses.List
    (
    -- * REST Resource
      GrouplicensesListResource

    -- * Creating a Request
    , grouplicensesList
    , GrouplicensesList

    -- * Request Lenses
    , glXgafv
    , glUploadProtocol
    , glEnterpriseId
    , glAccessToken
    , glUploadType
    , glCallback
    ) where

import Network.Google.AndroidEnterprise.Types
import Network.Google.Prelude

-- | A resource alias for @androidenterprise.grouplicenses.list@ method which the
-- 'GrouplicensesList' request conforms to.
type GrouplicensesListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "groupLicenses" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] GroupLicensesListResponse

-- | Retrieves IDs of all products for which the enterprise has a group
-- license.
--
-- /See:/ 'grouplicensesList' smart constructor.
data GrouplicensesList =
  GrouplicensesList'
    { _glXgafv :: !(Maybe Xgafv)
    , _glUploadProtocol :: !(Maybe Text)
    , _glEnterpriseId :: !Text
    , _glAccessToken :: !(Maybe Text)
    , _glUploadType :: !(Maybe Text)
    , _glCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GrouplicensesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glXgafv'
--
-- * 'glUploadProtocol'
--
-- * 'glEnterpriseId'
--
-- * 'glAccessToken'
--
-- * 'glUploadType'
--
-- * 'glCallback'
grouplicensesList
    :: Text -- ^ 'glEnterpriseId'
    -> GrouplicensesList
grouplicensesList pGlEnterpriseId_ =
  GrouplicensesList'
    { _glXgafv = Nothing
    , _glUploadProtocol = Nothing
    , _glEnterpriseId = pGlEnterpriseId_
    , _glAccessToken = Nothing
    , _glUploadType = Nothing
    , _glCallback = Nothing
    }


-- | V1 error format.
glXgafv :: Lens' GrouplicensesList (Maybe Xgafv)
glXgafv = lens _glXgafv (\ s a -> s{_glXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
glUploadProtocol :: Lens' GrouplicensesList (Maybe Text)
glUploadProtocol
  = lens _glUploadProtocol
      (\ s a -> s{_glUploadProtocol = a})

-- | The ID of the enterprise.
glEnterpriseId :: Lens' GrouplicensesList Text
glEnterpriseId
  = lens _glEnterpriseId
      (\ s a -> s{_glEnterpriseId = a})

-- | OAuth access token.
glAccessToken :: Lens' GrouplicensesList (Maybe Text)
glAccessToken
  = lens _glAccessToken
      (\ s a -> s{_glAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
glUploadType :: Lens' GrouplicensesList (Maybe Text)
glUploadType
  = lens _glUploadType (\ s a -> s{_glUploadType = a})

-- | JSONP
glCallback :: Lens' GrouplicensesList (Maybe Text)
glCallback
  = lens _glCallback (\ s a -> s{_glCallback = a})

instance GoogleRequest GrouplicensesList where
        type Rs GrouplicensesList = GroupLicensesListResponse
        type Scopes GrouplicensesList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient GrouplicensesList'{..}
          = go _glEnterpriseId _glXgafv _glUploadProtocol
              _glAccessToken
              _glUploadType
              _glCallback
              (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy GrouplicensesListResource)
                      mempty
