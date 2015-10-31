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
-- Module      : Network.Google.Resource.Compute.GlobalForwardingRules.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalForwardingRules.insert@.
module Network.Google.Resource.Compute.GlobalForwardingRules.Insert
    (
    -- * REST Resource
      GlobalForwardingRulesInsertResource

    -- * Creating a Request
    , globalForwardingRulesInsert
    , GlobalForwardingRulesInsert

    -- * Request Lenses
    , gfriProject
    , gfriPayload
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.globalForwardingRules.insert@ method which the
-- 'GlobalForwardingRulesInsert' request conforms to.
type GlobalForwardingRulesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "forwardingRules" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] ForwardingRule :>
                     Post '[JSON] Operation

-- | Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ 'globalForwardingRulesInsert' smart constructor.
data GlobalForwardingRulesInsert = GlobalForwardingRulesInsert
    { _gfriProject :: !Text
    , _gfriPayload :: !ForwardingRule
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalForwardingRulesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfriProject'
--
-- * 'gfriPayload'
globalForwardingRulesInsert
    :: Text -- ^ 'gfriProject'
    -> ForwardingRule -- ^ 'gfriPayload'
    -> GlobalForwardingRulesInsert
globalForwardingRulesInsert pGfriProject_ pGfriPayload_ =
    GlobalForwardingRulesInsert
    { _gfriProject = pGfriProject_
    , _gfriPayload = pGfriPayload_
    }

-- | Project ID for this request.
gfriProject :: Lens' GlobalForwardingRulesInsert Text
gfriProject
  = lens _gfriProject (\ s a -> s{_gfriProject = a})

-- | Multipart request metadata.
gfriPayload :: Lens' GlobalForwardingRulesInsert ForwardingRule
gfriPayload
  = lens _gfriPayload (\ s a -> s{_gfriPayload = a})

instance GoogleRequest GlobalForwardingRulesInsert
         where
        type Rs GlobalForwardingRulesInsert = Operation
        type Scopes GlobalForwardingRulesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient GlobalForwardingRulesInsert{..}
          = go _gfriProject (Just AltJSON) _gfriPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalForwardingRulesInsertResource)
                      mempty
