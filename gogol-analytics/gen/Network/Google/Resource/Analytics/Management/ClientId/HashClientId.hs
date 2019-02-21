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
-- Module      : Network.Google.Resource.Analytics.Management.ClientId.HashClientId
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Hashes the given Client ID.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.clientId.hashClientId@.
module Network.Google.Resource.Analytics.Management.ClientId.HashClientId
    (
    -- * REST Resource
      ManagementClientIdHashClientIdResource

    -- * Creating a Request
    , managementClientIdHashClientId
    , ManagementClientIdHashClientId

    -- * Request Lenses
    , mcihciPayload
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.clientId.hashClientId@ method which the
-- 'ManagementClientIdHashClientId' request conforms to.
type ManagementClientIdHashClientIdResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "clientId:hashClientId" :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] HashClientIdRequest :>
                 Post '[JSON] HashClientIdResponse

-- | Hashes the given Client ID.
--
-- /See:/ 'managementClientIdHashClientId' smart constructor.
newtype ManagementClientIdHashClientId =
  ManagementClientIdHashClientId'
    { _mcihciPayload :: HashClientIdRequest
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementClientIdHashClientId' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mcihciPayload'
managementClientIdHashClientId
    :: HashClientIdRequest -- ^ 'mcihciPayload'
    -> ManagementClientIdHashClientId
managementClientIdHashClientId pMcihciPayload_ =
  ManagementClientIdHashClientId' {_mcihciPayload = pMcihciPayload_}


-- | Multipart request metadata.
mcihciPayload :: Lens' ManagementClientIdHashClientId HashClientIdRequest
mcihciPayload
  = lens _mcihciPayload
      (\ s a -> s{_mcihciPayload = a})

instance GoogleRequest ManagementClientIdHashClientId
         where
        type Rs ManagementClientIdHashClientId =
             HashClientIdResponse
        type Scopes ManagementClientIdHashClientId =
             '["https://www.googleapis.com/auth/analytics.edit",
               "https://www.googleapis.com/auth/analytics.readonly"]
        requestClient ManagementClientIdHashClientId'{..}
          = go (Just AltJSON) _mcihciPayload analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementClientIdHashClientIdResource)
                      mempty
