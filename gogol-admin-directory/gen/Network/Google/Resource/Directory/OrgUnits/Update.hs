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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an organizational unit.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.orgunits.update@.
module Network.Google.Resource.Directory.OrgUnits.Update
    (
    -- * REST Resource
      OrgUnitsUpdateResource

    -- * Creating a Request
    , orgUnitsUpdate
    , OrgUnitsUpdate

    -- * Request Lenses
    , ouuXgafv
    , ouuUploadProtocol
    , ouuAccessToken
    , ouuUploadType
    , ouuPayload
    , ouuOrgUnitPath
    , ouuCustomerId
    , ouuCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.orgunits.update@ method which the
-- 'OrgUnitsUpdate' request conforms to.
type OrgUnitsUpdateResource =
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
                             QueryParam "alt" AltJSON :>
                               ReqBody '[JSON] OrgUnit :> Put '[JSON] OrgUnit

-- | Updates an organizational unit.
--
-- /See:/ 'orgUnitsUpdate' smart constructor.
data OrgUnitsUpdate =
  OrgUnitsUpdate'
    { _ouuXgafv :: !(Maybe Xgafv)
    , _ouuUploadProtocol :: !(Maybe Text)
    , _ouuAccessToken :: !(Maybe Text)
    , _ouuUploadType :: !(Maybe Text)
    , _ouuPayload :: !OrgUnit
    , _ouuOrgUnitPath :: !Text
    , _ouuCustomerId :: !Text
    , _ouuCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrgUnitsUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouuXgafv'
--
-- * 'ouuUploadProtocol'
--
-- * 'ouuAccessToken'
--
-- * 'ouuUploadType'
--
-- * 'ouuPayload'
--
-- * 'ouuOrgUnitPath'
--
-- * 'ouuCustomerId'
--
-- * 'ouuCallback'
orgUnitsUpdate
    :: OrgUnit -- ^ 'ouuPayload'
    -> Text -- ^ 'ouuOrgUnitPath'
    -> Text -- ^ 'ouuCustomerId'
    -> OrgUnitsUpdate
orgUnitsUpdate pOuuPayload_ pOuuOrgUnitPath_ pOuuCustomerId_ =
  OrgUnitsUpdate'
    { _ouuXgafv = Nothing
    , _ouuUploadProtocol = Nothing
    , _ouuAccessToken = Nothing
    , _ouuUploadType = Nothing
    , _ouuPayload = pOuuPayload_
    , _ouuOrgUnitPath = pOuuOrgUnitPath_
    , _ouuCustomerId = pOuuCustomerId_
    , _ouuCallback = Nothing
    }


-- | V1 error format.
ouuXgafv :: Lens' OrgUnitsUpdate (Maybe Xgafv)
ouuXgafv = lens _ouuXgafv (\ s a -> s{_ouuXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ouuUploadProtocol :: Lens' OrgUnitsUpdate (Maybe Text)
ouuUploadProtocol
  = lens _ouuUploadProtocol
      (\ s a -> s{_ouuUploadProtocol = a})

-- | OAuth access token.
ouuAccessToken :: Lens' OrgUnitsUpdate (Maybe Text)
ouuAccessToken
  = lens _ouuAccessToken
      (\ s a -> s{_ouuAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ouuUploadType :: Lens' OrgUnitsUpdate (Maybe Text)
ouuUploadType
  = lens _ouuUploadType
      (\ s a -> s{_ouuUploadType = a})

-- | Multipart request metadata.
ouuPayload :: Lens' OrgUnitsUpdate OrgUnit
ouuPayload
  = lens _ouuPayload (\ s a -> s{_ouuPayload = a})

-- | The full path of the organizational unit or its unique ID.
ouuOrgUnitPath :: Lens' OrgUnitsUpdate Text
ouuOrgUnitPath
  = lens _ouuOrgUnitPath
      (\ s a -> s{_ouuOrgUnitPath = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
ouuCustomerId :: Lens' OrgUnitsUpdate Text
ouuCustomerId
  = lens _ouuCustomerId
      (\ s a -> s{_ouuCustomerId = a})

-- | JSONP
ouuCallback :: Lens' OrgUnitsUpdate (Maybe Text)
ouuCallback
  = lens _ouuCallback (\ s a -> s{_ouuCallback = a})

instance GoogleRequest OrgUnitsUpdate where
        type Rs OrgUnitsUpdate = OrgUnit
        type Scopes OrgUnitsUpdate =
             '["https://www.googleapis.com/auth/admin.directory.orgunit"]
        requestClient OrgUnitsUpdate'{..}
          = go _ouuCustomerId _ouuOrgUnitPath _ouuXgafv
              _ouuUploadProtocol
              _ouuAccessToken
              _ouuUploadType
              _ouuCallback
              (Just AltJSON)
              _ouuPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy OrgUnitsUpdateResource)
                      mempty
