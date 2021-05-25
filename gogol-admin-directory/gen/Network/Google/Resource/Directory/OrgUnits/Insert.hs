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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds an organizational unit.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.orgunits.insert@.
module Network.Google.Resource.Directory.OrgUnits.Insert
    (
    -- * REST Resource
      OrgUnitsInsertResource

    -- * Creating a Request
    , orgUnitsInsert
    , OrgUnitsInsert

    -- * Request Lenses
    , ouiXgafv
    , ouiUploadProtocol
    , ouiAccessToken
    , ouiUploadType
    , ouiPayload
    , ouiCustomerId
    , ouiCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.orgunits.insert@ method which the
-- 'OrgUnitsInsert' request conforms to.
type OrgUnitsInsertResource =
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
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] OrgUnit :> Post '[JSON] OrgUnit

-- | Adds an organizational unit.
--
-- /See:/ 'orgUnitsInsert' smart constructor.
data OrgUnitsInsert =
  OrgUnitsInsert'
    { _ouiXgafv :: !(Maybe Xgafv)
    , _ouiUploadProtocol :: !(Maybe Text)
    , _ouiAccessToken :: !(Maybe Text)
    , _ouiUploadType :: !(Maybe Text)
    , _ouiPayload :: !OrgUnit
    , _ouiCustomerId :: !Text
    , _ouiCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrgUnitsInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ouiXgafv'
--
-- * 'ouiUploadProtocol'
--
-- * 'ouiAccessToken'
--
-- * 'ouiUploadType'
--
-- * 'ouiPayload'
--
-- * 'ouiCustomerId'
--
-- * 'ouiCallback'
orgUnitsInsert
    :: OrgUnit -- ^ 'ouiPayload'
    -> Text -- ^ 'ouiCustomerId'
    -> OrgUnitsInsert
orgUnitsInsert pOuiPayload_ pOuiCustomerId_ =
  OrgUnitsInsert'
    { _ouiXgafv = Nothing
    , _ouiUploadProtocol = Nothing
    , _ouiAccessToken = Nothing
    , _ouiUploadType = Nothing
    , _ouiPayload = pOuiPayload_
    , _ouiCustomerId = pOuiCustomerId_
    , _ouiCallback = Nothing
    }


-- | V1 error format.
ouiXgafv :: Lens' OrgUnitsInsert (Maybe Xgafv)
ouiXgafv = lens _ouiXgafv (\ s a -> s{_ouiXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ouiUploadProtocol :: Lens' OrgUnitsInsert (Maybe Text)
ouiUploadProtocol
  = lens _ouiUploadProtocol
      (\ s a -> s{_ouiUploadProtocol = a})

-- | OAuth access token.
ouiAccessToken :: Lens' OrgUnitsInsert (Maybe Text)
ouiAccessToken
  = lens _ouiAccessToken
      (\ s a -> s{_ouiAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ouiUploadType :: Lens' OrgUnitsInsert (Maybe Text)
ouiUploadType
  = lens _ouiUploadType
      (\ s a -> s{_ouiUploadType = a})

-- | Multipart request metadata.
ouiPayload :: Lens' OrgUnitsInsert OrgUnit
ouiPayload
  = lens _ouiPayload (\ s a -> s{_ouiPayload = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
ouiCustomerId :: Lens' OrgUnitsInsert Text
ouiCustomerId
  = lens _ouiCustomerId
      (\ s a -> s{_ouiCustomerId = a})

-- | JSONP
ouiCallback :: Lens' OrgUnitsInsert (Maybe Text)
ouiCallback
  = lens _ouiCallback (\ s a -> s{_ouiCallback = a})

instance GoogleRequest OrgUnitsInsert where
        type Rs OrgUnitsInsert = OrgUnit
        type Scopes OrgUnitsInsert =
             '["https://www.googleapis.com/auth/admin.directory.orgunit"]
        requestClient OrgUnitsInsert'{..}
          = go _ouiCustomerId _ouiXgafv _ouiUploadProtocol
              _ouiAccessToken
              _ouiUploadType
              _ouiCallback
              (Just AltJSON)
              _ouiPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy OrgUnitsInsertResource)
                      mempty
