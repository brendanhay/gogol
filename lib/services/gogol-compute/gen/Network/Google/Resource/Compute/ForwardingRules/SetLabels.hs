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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.SetLabels
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the labels on the specified resource. To learn more about labels,
-- read the Labeling Resources documentation.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.setLabels@.
module Network.Google.Resource.Compute.ForwardingRules.SetLabels
    (
    -- * REST Resource
      ForwardingRulesSetLabelsResource

    -- * Creating a Request
    , forwardingRulesSetLabels
    , ForwardingRulesSetLabels

    -- * Request Lenses
    , frslRequestId
    , frslProject
    , frslPayload
    , frslResource
    , frslRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.forwardingRules.setLabels@ method which the
-- 'ForwardingRulesSetLabels' request conforms to.
type ForwardingRulesSetLabelsResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "forwardingRules" :>
                   Capture "resource" Text :>
                     "setLabels" :>
                       QueryParam "requestId" Text :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] RegionSetLabelsRequest :>
                             Post '[JSON] Operation

-- | Sets the labels on the specified resource. To learn more about labels,
-- read the Labeling Resources documentation.
--
-- /See:/ 'forwardingRulesSetLabels' smart constructor.
data ForwardingRulesSetLabels =
  ForwardingRulesSetLabels'
    { _frslRequestId :: !(Maybe Text)
    , _frslProject :: !Text
    , _frslPayload :: !RegionSetLabelsRequest
    , _frslResource :: !Text
    , _frslRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ForwardingRulesSetLabels' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'frslRequestId'
--
-- * 'frslProject'
--
-- * 'frslPayload'
--
-- * 'frslResource'
--
-- * 'frslRegion'
forwardingRulesSetLabels
    :: Text -- ^ 'frslProject'
    -> RegionSetLabelsRequest -- ^ 'frslPayload'
    -> Text -- ^ 'frslResource'
    -> Text -- ^ 'frslRegion'
    -> ForwardingRulesSetLabels
forwardingRulesSetLabels pFrslProject_ pFrslPayload_ pFrslResource_ pFrslRegion_ =
  ForwardingRulesSetLabels'
    { _frslRequestId = Nothing
    , _frslProject = pFrslProject_
    , _frslPayload = pFrslPayload_
    , _frslResource = pFrslResource_
    , _frslRegion = pFrslRegion_
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
frslRequestId :: Lens' ForwardingRulesSetLabels (Maybe Text)
frslRequestId
  = lens _frslRequestId
      (\ s a -> s{_frslRequestId = a})

-- | Project ID for this request.
frslProject :: Lens' ForwardingRulesSetLabels Text
frslProject
  = lens _frslProject (\ s a -> s{_frslProject = a})

-- | Multipart request metadata.
frslPayload :: Lens' ForwardingRulesSetLabels RegionSetLabelsRequest
frslPayload
  = lens _frslPayload (\ s a -> s{_frslPayload = a})

-- | Name or id of the resource for this request.
frslResource :: Lens' ForwardingRulesSetLabels Text
frslResource
  = lens _frslResource (\ s a -> s{_frslResource = a})

-- | The region for this request.
frslRegion :: Lens' ForwardingRulesSetLabels Text
frslRegion
  = lens _frslRegion (\ s a -> s{_frslRegion = a})

instance GoogleRequest ForwardingRulesSetLabels where
        type Rs ForwardingRulesSetLabels = Operation
        type Scopes ForwardingRulesSetLabels =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ForwardingRulesSetLabels'{..}
          = go _frslProject _frslRegion _frslResource
              _frslRequestId
              (Just AltJSON)
              _frslPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ForwardingRulesSetLabelsResource)
                      mempty
