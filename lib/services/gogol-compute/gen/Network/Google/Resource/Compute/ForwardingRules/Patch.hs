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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.Patch
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
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.patch@.
module Network.Google.Resource.Compute.ForwardingRules.Patch
    (
    -- * REST Resource
      ForwardingRulesPatchResource

    -- * Creating a Request
    , forwardingRulesPatch
    , ForwardingRulesPatch

    -- * Request Lenses
    , frpRequestId
    , frpProject
    , frpForwardingRule
    , frpPayload
    , frpRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.forwardingRules.patch@ method which the
-- 'ForwardingRulesPatch' request conforms to.
type ForwardingRulesPatchResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
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
-- /See:/ 'forwardingRulesPatch' smart constructor.
data ForwardingRulesPatch =
  ForwardingRulesPatch'
    { _frpRequestId :: !(Maybe Text)
    , _frpProject :: !Text
    , _frpForwardingRule :: !Text
    , _frpPayload :: !ForwardingRule
    , _frpRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ForwardingRulesPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frpRequestId'
--
-- * 'frpProject'
--
-- * 'frpForwardingRule'
--
-- * 'frpPayload'
--
-- * 'frpRegion'
forwardingRulesPatch
    :: Text -- ^ 'frpProject'
    -> Text -- ^ 'frpForwardingRule'
    -> ForwardingRule -- ^ 'frpPayload'
    -> Text -- ^ 'frpRegion'
    -> ForwardingRulesPatch
forwardingRulesPatch pFrpProject_ pFrpForwardingRule_ pFrpPayload_ pFrpRegion_ =
  ForwardingRulesPatch'
    { _frpRequestId = Nothing
    , _frpProject = pFrpProject_
    , _frpForwardingRule = pFrpForwardingRule_
    , _frpPayload = pFrpPayload_
    , _frpRegion = pFrpRegion_
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
frpRequestId :: Lens' ForwardingRulesPatch (Maybe Text)
frpRequestId
  = lens _frpRequestId (\ s a -> s{_frpRequestId = a})

-- | Project ID for this request.
frpProject :: Lens' ForwardingRulesPatch Text
frpProject
  = lens _frpProject (\ s a -> s{_frpProject = a})

-- | Name of the ForwardingRule resource to patch.
frpForwardingRule :: Lens' ForwardingRulesPatch Text
frpForwardingRule
  = lens _frpForwardingRule
      (\ s a -> s{_frpForwardingRule = a})

-- | Multipart request metadata.
frpPayload :: Lens' ForwardingRulesPatch ForwardingRule
frpPayload
  = lens _frpPayload (\ s a -> s{_frpPayload = a})

-- | Name of the region scoping this request.
frpRegion :: Lens' ForwardingRulesPatch Text
frpRegion
  = lens _frpRegion (\ s a -> s{_frpRegion = a})

instance GoogleRequest ForwardingRulesPatch where
        type Rs ForwardingRulesPatch = Operation
        type Scopes ForwardingRulesPatch =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ForwardingRulesPatch'{..}
          = go _frpProject _frpRegion _frpForwardingRule
              _frpRequestId
              (Just AltJSON)
              _frpPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ForwardingRulesPatchResource)
                      mempty
