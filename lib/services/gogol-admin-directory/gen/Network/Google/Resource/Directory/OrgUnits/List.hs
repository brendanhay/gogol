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
-- Module      : Network.Google.Resource.Directory.OrgUnits.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a list of all organizational units for an account.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.orgunits.list@.
module Network.Google.Resource.Directory.OrgUnits.List
    (
    -- * REST Resource
      OrgUnitsListResource

    -- * Creating a Request
    , orgUnitsList
    , OrgUnitsList

    -- * Request Lenses
    , oulXgafv
    , oulUploadProtocol
    , oulAccessToken
    , oulUploadType
    , oulOrgUnitPath
    , oulCustomerId
    , oulType
    , oulCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.orgunits.list@ method which the
-- 'OrgUnitsList' request conforms to.
type OrgUnitsListResource =
     "admin" :>
       "directory" :>
         "v1" :>
           "customer" :>
             Capture "customerId" Text :>
               "orgunits" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "orgUnitPath" Text :>
                           QueryParam "type" OrgUnitsListType :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :> Get '[JSON] OrgUnits

-- | Retrieves a list of all organizational units for an account.
--
-- /See:/ 'orgUnitsList' smart constructor.
data OrgUnitsList =
  OrgUnitsList'
    { _oulXgafv :: !(Maybe Xgafv)
    , _oulUploadProtocol :: !(Maybe Text)
    , _oulAccessToken :: !(Maybe Text)
    , _oulUploadType :: !(Maybe Text)
    , _oulOrgUnitPath :: !Text
    , _oulCustomerId :: !Text
    , _oulType :: !(Maybe OrgUnitsListType)
    , _oulCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrgUnitsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oulXgafv'
--
-- * 'oulUploadProtocol'
--
-- * 'oulAccessToken'
--
-- * 'oulUploadType'
--
-- * 'oulOrgUnitPath'
--
-- * 'oulCustomerId'
--
-- * 'oulType'
--
-- * 'oulCallback'
orgUnitsList
    :: Text -- ^ 'oulCustomerId'
    -> OrgUnitsList
orgUnitsList pOulCustomerId_ =
  OrgUnitsList'
    { _oulXgafv = Nothing
    , _oulUploadProtocol = Nothing
    , _oulAccessToken = Nothing
    , _oulUploadType = Nothing
    , _oulOrgUnitPath = ""
    , _oulCustomerId = pOulCustomerId_
    , _oulType = Nothing
    , _oulCallback = Nothing
    }


-- | V1 error format.
oulXgafv :: Lens' OrgUnitsList (Maybe Xgafv)
oulXgafv = lens _oulXgafv (\ s a -> s{_oulXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oulUploadProtocol :: Lens' OrgUnitsList (Maybe Text)
oulUploadProtocol
  = lens _oulUploadProtocol
      (\ s a -> s{_oulUploadProtocol = a})

-- | OAuth access token.
oulAccessToken :: Lens' OrgUnitsList (Maybe Text)
oulAccessToken
  = lens _oulAccessToken
      (\ s a -> s{_oulAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oulUploadType :: Lens' OrgUnitsList (Maybe Text)
oulUploadType
  = lens _oulUploadType
      (\ s a -> s{_oulUploadType = a})

-- | The full path to the organizational unit or its unique ID. Returns the
-- children of the specified organizational unit.
oulOrgUnitPath :: Lens' OrgUnitsList Text
oulOrgUnitPath
  = lens _oulOrgUnitPath
      (\ s a -> s{_oulOrgUnitPath = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
oulCustomerId :: Lens' OrgUnitsList Text
oulCustomerId
  = lens _oulCustomerId
      (\ s a -> s{_oulCustomerId = a})

-- | Whether to return all sub-organizations or just immediate children.
oulType :: Lens' OrgUnitsList (Maybe OrgUnitsListType)
oulType = lens _oulType (\ s a -> s{_oulType = a})

-- | JSONP
oulCallback :: Lens' OrgUnitsList (Maybe Text)
oulCallback
  = lens _oulCallback (\ s a -> s{_oulCallback = a})

instance GoogleRequest OrgUnitsList where
        type Rs OrgUnitsList = OrgUnits
        type Scopes OrgUnitsList =
             '["https://www.googleapis.com/auth/admin.directory.orgunit",
               "https://www.googleapis.com/auth/admin.directory.orgunit.readonly"]
        requestClient OrgUnitsList'{..}
          = go _oulCustomerId _oulXgafv _oulUploadProtocol
              _oulAccessToken
              _oulUploadType
              (Just _oulOrgUnitPath)
              _oulType
              _oulCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient (Proxy :: Proxy OrgUnitsListResource)
                      mempty
