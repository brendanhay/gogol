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
-- Module      : Network.Google.Resource.Compute.GlobalForwardingRules.Patch
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the specified forwarding rule with the data included in the
-- request. This method supports PATCH semantics and uses the JSON merge
-- patch format and processing rules. Currently, you can only patch the
-- network_tier field.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalForwardingRules.patch@.
module Network.Google.Resource.Compute.GlobalForwardingRules.Patch
    (
    -- * REST Resource
      GlobalForwardingRulesPatchResource

    -- * Creating a Request
    , globalForwardingRulesPatch
    , GlobalForwardingRulesPatch

    -- * Request Lenses
    , gfrpRequestId
    , gfrpProject
    , gfrpForwardingRule
    , gfrpPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalForwardingRules.patch@ method which the
-- 'GlobalForwardingRulesPatch' request conforms to.
type GlobalForwardingRulesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "forwardingRules" :>
                 Capture "forwardingRule" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ForwardingRule :>
                         Patch '[JSON] Operation

-- | Updates the specified forwarding rule with the data included in the
-- request. This method supports PATCH semantics and uses the JSON merge
-- patch format and processing rules. Currently, you can only patch the
-- network_tier field.
--
-- /See:/ 'globalForwardingRulesPatch' smart constructor.
data GlobalForwardingRulesPatch =
  GlobalForwardingRulesPatch'
    { _gfrpRequestId :: !(Maybe Text)
    , _gfrpProject :: !Text
    , _gfrpForwardingRule :: !Text
    , _gfrpPayload :: !ForwardingRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalForwardingRulesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfrpRequestId'
--
-- * 'gfrpProject'
--
-- * 'gfrpForwardingRule'
--
-- * 'gfrpPayload'
globalForwardingRulesPatch
    :: Text -- ^ 'gfrpProject'
    -> Text -- ^ 'gfrpForwardingRule'
    -> ForwardingRule -- ^ 'gfrpPayload'
    -> GlobalForwardingRulesPatch
globalForwardingRulesPatch pGfrpProject_ pGfrpForwardingRule_ pGfrpPayload_ =
  GlobalForwardingRulesPatch'
    { _gfrpRequestId = Nothing
    , _gfrpProject = pGfrpProject_
    , _gfrpForwardingRule = pGfrpForwardingRule_
    , _gfrpPayload = pGfrpPayload_
    }


-- | An optional request ID to identify requests. Specify a unique request ID
-- so that if you must retry your request, the server will know to ignore
-- the request if it has already been completed. For example, consider a
-- situation where you make an initial request and the request times out.
-- If you make the request again with the same request ID, the server can
-- check if original operation with the same request ID was received, and
-- if so, will ignore the second request. This prevents clients from
-- accidentally creating duplicate commitments. The request ID must be a
-- valid UUID with the exception that zero UUID is not supported
-- (00000000-0000-0000-0000-000000000000).
gfrpRequestId :: Lens' GlobalForwardingRulesPatch (Maybe Text)
gfrpRequestId
  = lens _gfrpRequestId
      (\ s a -> s{_gfrpRequestId = a})

-- | Project ID for this request.
gfrpProject :: Lens' GlobalForwardingRulesPatch Text
gfrpProject
  = lens _gfrpProject (\ s a -> s{_gfrpProject = a})

-- | Name of the ForwardingRule resource to patch.
gfrpForwardingRule :: Lens' GlobalForwardingRulesPatch Text
gfrpForwardingRule
  = lens _gfrpForwardingRule
      (\ s a -> s{_gfrpForwardingRule = a})

-- | Multipart request metadata.
gfrpPayload :: Lens' GlobalForwardingRulesPatch ForwardingRule
gfrpPayload
  = lens _gfrpPayload (\ s a -> s{_gfrpPayload = a})

instance GoogleRequest GlobalForwardingRulesPatch
         where
        type Rs GlobalForwardingRulesPatch = Operation
        type Scopes GlobalForwardingRulesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient GlobalForwardingRulesPatch'{..}
          = go _gfrpProject _gfrpForwardingRule _gfrpRequestId
              (Just AltJSON)
              _gfrpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalForwardingRulesPatchResource)
                      mempty
