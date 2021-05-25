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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes an organizational unit.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.orgunits.delete@.
module Network.Google.Resource.Directory.OrgUnits.Delete
    (
    -- * REST Resource
      OrgUnitsDeleteResource

    -- * Creating a Request
    , orgUnitsDelete
    , OrgUnitsDelete

    -- * Request Lenses
    , oudXgafv
    , oudUploadProtocol
    , oudAccessToken
    , oudUploadType
    , oudOrgUnitPath
    , oudCustomerId
    , oudCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.orgunits.delete@ method which the
-- 'OrgUnitsDelete' request conforms to.
type OrgUnitsDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "orgunits" :>
                 Capture "orgUnitPath" Text :>
                   QueryParam "$.xgafv" Xgafv :>
                     QueryParam "upload_protocol" Text :>
                       QueryParam "access_token" Text :>
                         QueryParam "uploadType" Text :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes an organizational unit.
--
-- /See:/ 'orgUnitsDelete' smart constructor.
data OrgUnitsDelete =
  OrgUnitsDelete'
    { _oudXgafv :: !(Maybe Xgafv)
    , _oudUploadProtocol :: !(Maybe Text)
    , _oudAccessToken :: !(Maybe Text)
    , _oudUploadType :: !(Maybe Text)
    , _oudOrgUnitPath :: !Text
    , _oudCustomerId :: !Text
    , _oudCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrgUnitsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oudXgafv'
--
-- * 'oudUploadProtocol'
--
-- * 'oudAccessToken'
--
-- * 'oudUploadType'
--
-- * 'oudOrgUnitPath'
--
-- * 'oudCustomerId'
--
-- * 'oudCallback'
orgUnitsDelete
    :: Text -- ^ 'oudOrgUnitPath'
    -> Text -- ^ 'oudCustomerId'
    -> OrgUnitsDelete
orgUnitsDelete pOudOrgUnitPath_ pOudCustomerId_ =
  OrgUnitsDelete'
    { _oudXgafv = Nothing
    , _oudUploadProtocol = Nothing
    , _oudAccessToken = Nothing
    , _oudUploadType = Nothing
    , _oudOrgUnitPath = pOudOrgUnitPath_
    , _oudCustomerId = pOudCustomerId_
    , _oudCallback = Nothing
    }


-- | V1 error format.
oudXgafv :: Lens' OrgUnitsDelete (Maybe Xgafv)
oudXgafv = lens _oudXgafv (\ s a -> s{_oudXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oudUploadProtocol :: Lens' OrgUnitsDelete (Maybe Text)
oudUploadProtocol
  = lens _oudUploadProtocol
      (\ s a -> s{_oudUploadProtocol = a})

-- | OAuth access token.
oudAccessToken :: Lens' OrgUnitsDelete (Maybe Text)
oudAccessToken
  = lens _oudAccessToken
      (\ s a -> s{_oudAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oudUploadType :: Lens' OrgUnitsDelete (Maybe Text)
oudUploadType
  = lens _oudUploadType
      (\ s a -> s{_oudUploadType = a})

-- | The full path of the organizational unit or its unique ID.
oudOrgUnitPath :: Lens' OrgUnitsDelete Text
oudOrgUnitPath
  = lens _oudOrgUnitPath
      (\ s a -> s{_oudOrgUnitPath = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
oudCustomerId :: Lens' OrgUnitsDelete Text
oudCustomerId
  = lens _oudCustomerId
      (\ s a -> s{_oudCustomerId = a})

-- | JSONP
oudCallback :: Lens' OrgUnitsDelete (Maybe Text)
oudCallback
  = lens _oudCallback (\ s a -> s{_oudCallback = a})

instance GoogleRequest OrgUnitsDelete where
        type Rs OrgUnitsDelete = ()
        type Scopes OrgUnitsDelete =
             '["https://www.googleapis.com/auth/admin.directory.orgunit"]
        requestClient OrgUnitsDelete'{..}
          = go _oudCustomerId _oudOrgUnitPath _oudXgafv
              _oudUploadProtocol
              _oudAccessToken
              _oudUploadType
              _oudCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy OrgUnitsDeleteResource)
                      mempty
