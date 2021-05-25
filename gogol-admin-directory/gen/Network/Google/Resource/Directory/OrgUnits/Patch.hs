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
-- Module      : Network.Google.Resource.Directory.OrgUnits.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an organizational unit. This method supports [patch
-- semantics](\/admin-sdk\/directory\/v1\/guides\/performance#patch)
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @directory.orgunits.patch@.
module Network.Google.Resource.Directory.OrgUnits.Patch
    (
    -- * REST Resource
      OrgUnitsPatchResource

    -- * Creating a Request
    , orgUnitsPatch
    , OrgUnitsPatch

    -- * Request Lenses
    , oupXgafv
    , oupUploadProtocol
    , oupAccessToken
    , oupUploadType
    , oupPayload
    , oupOrgUnitPath
    , oupCustomerId
    , oupCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @directory.orgunits.patch@ method which the
-- 'OrgUnitsPatch' request conforms to.
type OrgUnitsPatchResource =
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
                               ReqBody '[JSON] OrgUnit :> Patch '[JSON] OrgUnit

-- | Updates an organizational unit. This method supports [patch
-- semantics](\/admin-sdk\/directory\/v1\/guides\/performance#patch)
--
-- /See:/ 'orgUnitsPatch' smart constructor.
data OrgUnitsPatch =
  OrgUnitsPatch'
    { _oupXgafv :: !(Maybe Xgafv)
    , _oupUploadProtocol :: !(Maybe Text)
    , _oupAccessToken :: !(Maybe Text)
    , _oupUploadType :: !(Maybe Text)
    , _oupPayload :: !OrgUnit
    , _oupOrgUnitPath :: !Text
    , _oupCustomerId :: !Text
    , _oupCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OrgUnitsPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'oupXgafv'
--
-- * 'oupUploadProtocol'
--
-- * 'oupAccessToken'
--
-- * 'oupUploadType'
--
-- * 'oupPayload'
--
-- * 'oupOrgUnitPath'
--
-- * 'oupCustomerId'
--
-- * 'oupCallback'
orgUnitsPatch
    :: OrgUnit -- ^ 'oupPayload'
    -> Text -- ^ 'oupOrgUnitPath'
    -> Text -- ^ 'oupCustomerId'
    -> OrgUnitsPatch
orgUnitsPatch pOupPayload_ pOupOrgUnitPath_ pOupCustomerId_ =
  OrgUnitsPatch'
    { _oupXgafv = Nothing
    , _oupUploadProtocol = Nothing
    , _oupAccessToken = Nothing
    , _oupUploadType = Nothing
    , _oupPayload = pOupPayload_
    , _oupOrgUnitPath = pOupOrgUnitPath_
    , _oupCustomerId = pOupCustomerId_
    , _oupCallback = Nothing
    }


-- | V1 error format.
oupXgafv :: Lens' OrgUnitsPatch (Maybe Xgafv)
oupXgafv = lens _oupXgafv (\ s a -> s{_oupXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
oupUploadProtocol :: Lens' OrgUnitsPatch (Maybe Text)
oupUploadProtocol
  = lens _oupUploadProtocol
      (\ s a -> s{_oupUploadProtocol = a})

-- | OAuth access token.
oupAccessToken :: Lens' OrgUnitsPatch (Maybe Text)
oupAccessToken
  = lens _oupAccessToken
      (\ s a -> s{_oupAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
oupUploadType :: Lens' OrgUnitsPatch (Maybe Text)
oupUploadType
  = lens _oupUploadType
      (\ s a -> s{_oupUploadType = a})

-- | Multipart request metadata.
oupPayload :: Lens' OrgUnitsPatch OrgUnit
oupPayload
  = lens _oupPayload (\ s a -> s{_oupPayload = a})

-- | The full path of the organizational unit or its unique ID.
oupOrgUnitPath :: Lens' OrgUnitsPatch Text
oupOrgUnitPath
  = lens _oupOrgUnitPath
      (\ s a -> s{_oupOrgUnitPath = a})

-- | The unique ID for the customer\'s Google Workspace account. As an
-- account administrator, you can also use the \`my_customer\` alias to
-- represent your account\'s \`customerId\`. The \`customerId\` is also
-- returned as part of the [Users
-- resource](\/admin-sdk\/directory\/v1\/reference\/users).
oupCustomerId :: Lens' OrgUnitsPatch Text
oupCustomerId
  = lens _oupCustomerId
      (\ s a -> s{_oupCustomerId = a})

-- | JSONP
oupCallback :: Lens' OrgUnitsPatch (Maybe Text)
oupCallback
  = lens _oupCallback (\ s a -> s{_oupCallback = a})

instance GoogleRequest OrgUnitsPatch where
        type Rs OrgUnitsPatch = OrgUnit
        type Scopes OrgUnitsPatch =
             '["https://www.googleapis.com/auth/admin.directory.orgunit"]
        requestClient OrgUnitsPatch'{..}
          = go _oupCustomerId _oupOrgUnitPath _oupXgafv
              _oupUploadProtocol
              _oupAccessToken
              _oupUploadType
              _oupCallback
              (Just AltJSON)
              _oupPayload
              directoryService
          where go
                  = buildClient (Proxy :: Proxy OrgUnitsPatchResource)
                      mempty
