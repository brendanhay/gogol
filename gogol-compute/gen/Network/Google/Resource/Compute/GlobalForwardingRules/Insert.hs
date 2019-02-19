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
-- Creates a GlobalForwardingRule resource in the specified project using
-- the data included in the request.
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
    , gfriRequestId
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
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] ForwardingRule :>
                       Post '[JSON] Operation

-- | Creates a GlobalForwardingRule resource in the specified project using
-- the data included in the request.
--
-- /See:/ 'globalForwardingRulesInsert' smart constructor.
data GlobalForwardingRulesInsert =
  GlobalForwardingRulesInsert'
    { _gfriRequestId :: !(Maybe Text)
    , _gfriProject   :: !Text
    , _gfriPayload   :: !ForwardingRule
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalForwardingRulesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gfriRequestId'
--
-- * 'gfriProject'
--
-- * 'gfriPayload'
globalForwardingRulesInsert
    :: Text -- ^ 'gfriProject'
    -> ForwardingRule -- ^ 'gfriPayload'
    -> GlobalForwardingRulesInsert
globalForwardingRulesInsert pGfriProject_ pGfriPayload_ =
  GlobalForwardingRulesInsert'
    { _gfriRequestId = Nothing
    , _gfriProject = pGfriProject_
    , _gfriPayload = pGfriPayload_
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
gfriRequestId :: Lens' GlobalForwardingRulesInsert (Maybe Text)
gfriRequestId
  = lens _gfriRequestId
      (\ s a -> s{_gfriRequestId = a})

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
        requestClient GlobalForwardingRulesInsert'{..}
          = go _gfriProject _gfriRequestId (Just AltJSON)
              _gfriPayload
              computeService
          where go
                  = buildClient
                      (Proxy :: Proxy GlobalForwardingRulesInsertResource)
                      mempty
