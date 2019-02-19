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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.SetTarget
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes target URL for forwarding rule. The new target should be of the
-- same type as the old target.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.setTarget@.
module Network.Google.Resource.Compute.ForwardingRules.SetTarget
    (
    -- * REST Resource
      ForwardingRulesSetTargetResource

    -- * Creating a Request
    , forwardingRulesSetTarget
    , ForwardingRulesSetTarget

    -- * Request Lenses
    , frstRequestId
    , frstProject
    , frstForwardingRule
    , frstPayload
    , frstRegion
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @compute.forwardingRules.setTarget@ method which the
-- 'ForwardingRulesSetTarget' request conforms to.
type ForwardingRulesSetTargetResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "forwardingRules" :>
                   Capture "forwardingRule" Text :>
                     "setTarget" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TargetReference :>
                             Post '[JSON] Operation

-- | Changes target URL for forwarding rule. The new target should be of the
-- same type as the old target.
--
-- /See:/ 'forwardingRulesSetTarget' smart constructor.
data ForwardingRulesSetTarget =
  ForwardingRulesSetTarget'
    { _frstRequestId      :: !(Maybe Text)
    , _frstProject        :: !Text
    , _frstForwardingRule :: !Text
    , _frstPayload        :: !TargetReference
    , _frstRegion         :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ForwardingRulesSetTarget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frstRequestId'
--
-- * 'frstProject'
--
-- * 'frstForwardingRule'
--
-- * 'frstPayload'
--
-- * 'frstRegion'
forwardingRulesSetTarget
    :: Text -- ^ 'frstProject'
    -> Text -- ^ 'frstForwardingRule'
    -> TargetReference -- ^ 'frstPayload'
    -> Text -- ^ 'frstRegion'
    -> ForwardingRulesSetTarget
forwardingRulesSetTarget pFrstProject_ pFrstForwardingRule_ pFrstPayload_ pFrstRegion_ =
  ForwardingRulesSetTarget'
    { _frstRequestId = Nothing
    , _frstProject = pFrstProject_
    , _frstForwardingRule = pFrstForwardingRule_
    , _frstPayload = pFrstPayload_
    , _frstRegion = pFrstRegion_
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
frstRequestId :: Lens' ForwardingRulesSetTarget (Maybe Text)
frstRequestId
  = lens _frstRequestId
      (\ s a -> s{_frstRequestId = a})

-- | Project ID for this request.
frstProject :: Lens' ForwardingRulesSetTarget Text
frstProject
  = lens _frstProject (\ s a -> s{_frstProject = a})

-- | Name of the ForwardingRule resource in which target is to be set.
frstForwardingRule :: Lens' ForwardingRulesSetTarget Text
frstForwardingRule
  = lens _frstForwardingRule
      (\ s a -> s{_frstForwardingRule = a})

-- | Multipart request metadata.
frstPayload :: Lens' ForwardingRulesSetTarget TargetReference
frstPayload
  = lens _frstPayload (\ s a -> s{_frstPayload = a})

-- | Name of the region scoping this request.
frstRegion :: Lens' ForwardingRulesSetTarget Text
frstRegion
  = lens _frstRegion (\ s a -> s{_frstRegion = a})

instance GoogleRequest ForwardingRulesSetTarget where
        type Rs ForwardingRulesSetTarget = Operation
        type Scopes ForwardingRulesSetTarget =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ForwardingRulesSetTarget'{..}
          = go _frstProject _frstRegion _frstForwardingRule
              _frstRequestId
              (Just AltJSON)
              _frstPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ForwardingRulesSetTargetResource)
                      mempty
