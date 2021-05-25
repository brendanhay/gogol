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
-- Module      : Network.Google.Resource.Compute.ForwardingRules.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.forwardingRules.insert@.
module Network.Google.Resource.Compute.ForwardingRules.Insert
    (
    -- * REST Resource
      ForwardingRulesInsertResource

    -- * Creating a Request
    , forwardingRulesInsert
    , ForwardingRulesInsert

    -- * Request Lenses
    , friRequestId
    , friProject
    , friPayload
    , friRegion
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.forwardingRules.insert@ method which the
-- 'ForwardingRulesInsert' request conforms to.
type ForwardingRulesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "regions" :>
               Capture "region" Text :>
                 "forwardingRules" :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ForwardingRule :>
                         Post '[JSON] Operation

-- | Creates a ForwardingRule resource in the specified project and region
-- using the data included in the request.
--
-- /See:/ 'forwardingRulesInsert' smart constructor.
data ForwardingRulesInsert =
  ForwardingRulesInsert'
    { _friRequestId :: !(Maybe Text)
    , _friProject :: !Text
    , _friPayload :: !ForwardingRule
    , _friRegion :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ForwardingRulesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'friRequestId'
--
-- * 'friProject'
--
-- * 'friPayload'
--
-- * 'friRegion'
forwardingRulesInsert
    :: Text -- ^ 'friProject'
    -> ForwardingRule -- ^ 'friPayload'
    -> Text -- ^ 'friRegion'
    -> ForwardingRulesInsert
forwardingRulesInsert pFriProject_ pFriPayload_ pFriRegion_ =
  ForwardingRulesInsert'
    { _friRequestId = Nothing
    , _friProject = pFriProject_
    , _friPayload = pFriPayload_
    , _friRegion = pFriRegion_
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
friRequestId :: Lens' ForwardingRulesInsert (Maybe Text)
friRequestId
  = lens _friRequestId (\ s a -> s{_friRequestId = a})

-- | Project ID for this request.
friProject :: Lens' ForwardingRulesInsert Text
friProject
  = lens _friProject (\ s a -> s{_friProject = a})

-- | Multipart request metadata.
friPayload :: Lens' ForwardingRulesInsert ForwardingRule
friPayload
  = lens _friPayload (\ s a -> s{_friPayload = a})

-- | Name of the region scoping this request.
friRegion :: Lens' ForwardingRulesInsert Text
friRegion
  = lens _friRegion (\ s a -> s{_friRegion = a})

instance GoogleRequest ForwardingRulesInsert where
        type Rs ForwardingRulesInsert = Operation
        type Scopes ForwardingRulesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient ForwardingRulesInsert'{..}
          = go _friProject _friRegion _friRequestId
              (Just AltJSON)
              _friPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy ForwardingRulesInsertResource)
                      mempty
