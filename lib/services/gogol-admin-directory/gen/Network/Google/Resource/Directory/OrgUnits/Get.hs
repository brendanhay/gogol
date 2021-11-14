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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Get
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves an organizational unit.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.orgunits.get@.
module Network.Google.Resource.Directory.OrgUnits.Get
    (
    -- * REST Resource
      OrgUnitsGetResource

    -- * Creating a Request
    , orgUnitsGet
    , OrgUnitsGet

    -- * Request Lenses
    , ougXgafv
    , ougUploadProtocol
    , ougAccessToken
    , ougUploadType
    , ougOrgUnitPath
    , ougCustomerId
    , ougCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.orgunits.get@ method which the
-- 'OrgUnitsGet' request conforms to.
type OrgUnitsGetResource =
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
                             QueryParam "alt" AltJSON :> Get '[JSON] OrgUnit

-- | Retrieves an organizational unit.
--
-- /See:/ 'orgUnitsGet' smart constructor.
data OrgUnitsGet =
  OrgUnitsGet'
    { _ougXgafv :: !(Maybe Xgafv)
    , _ougUploadProtocol :: !(Maybe Text)
    , _ougAccessToken :: !(Maybe Text)
    , _ougUploadType :: !(Maybe Text)
    , _ougOrgUnitPath :: !Text
    , _ougCustomerId :: !Text
    , _ougCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrgUnitsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ougXgafv'
--
-- * 'ougUploadProtocol'
--
-- * 'ougAccessToken'
--
-- * 'ougUploadType'
--
-- * 'ougOrgUnitPath'
--
-- * 'ougCustomerId'
--
-- * 'ougCallback'
orgUnitsGet
    :: Text -- ^ 'ougOrgUnitPath'
    -> Text -- ^ 'ougCustomerId'
    -> OrgUnitsGet
orgUnitsGet pOugOrgUnitPath_ pOugCustomerId_ =
  OrgUnitsGet'
    { _ougXgafv = Nothing
    , _ougUploadProtocol = Nothing
    , _ougAccessToken = Nothing
    , _ougUploadType = Nothing
    , _ougOrgUnitPath = pOugOrgUnitPath_
    , _ougCustomerId = pOugCustomerId_
    , _ougCallback = Nothing
    }


-- | V1 error format.
ougXgafv :: Lens' OrgUnitsGet (Maybe Xgafv)
ougXgafv = lens _ougXgafv (\ s a -> s{_ougXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ougUploadProtocol :: Lens' OrgUnitsGet (Maybe Text)
ougUploadProtocol
  = lens _ougUploadProtocol
      (\ s a -> s{_ougUploadProtocol = a})

-- | OAuth access token.
ougAccessToken :: Lens' OrgUnitsGet (Maybe Text)
ougAccessToken
  = lens _ougAccessToken
      (\ s a -> s{_ougAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ougUploadType :: Lens' OrgUnitsGet (Maybe Text)
ougUploadType
  = lens _ougUploadType
      (\ s a -> s{_ougUploadType = a})

-- | The full path of the organizational unit or its unique ID.
ougOrgUnitPath :: Lens' OrgUnitsGet Text
ougOrgUnitPath
  = lens _ougOrgUnitPath
      (\ s a -> s{_ougOrgUnitPath = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
ougCustomerId :: Lens' OrgUnitsGet Text
ougCustomerId
  = lens _ougCustomerId
      (\ s a -> s{_ougCustomerId = a})

-- | JSONP
ougCallback :: Lens' OrgUnitsGet (Maybe Text)
ougCallback
  = lens _ougCallback (\ s a -> s{_ougCallback = a})

instance GoogleRequest OrgUnitsGet where
        type Rs OrgUnitsGet = OrgUnit
        type Scopes OrgUnitsGet =
             '["https://www.googleapis.com/auth/admin.directory.orgunit",
               "https://www.googleapis.com/auth/admin.directory.orgunit.readonly"]
        requestClient OrgUnitsGet'{..}
          = go _ougCustomerId _ougOrgUnitPath _ougXgafv
              _ougUploadProtocol
              _ougAccessToken
              _ougUploadType
              _ougCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy OrgUnitsGetResource)
                      mempty
