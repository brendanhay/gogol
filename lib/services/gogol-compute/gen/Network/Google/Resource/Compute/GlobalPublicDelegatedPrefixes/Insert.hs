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
-- Module      : Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a global PublicDelegatedPrefix in the specified project using
-- the parameters that are included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.globalPublicDelegatedPrefixes.insert@.
module Network.Google.Resource.Compute.GlobalPublicDelegatedPrefixes.Insert
    (
    -- * REST Resource
      GlobalPublicDelegatedPrefixesInsertResource

    -- * Creating a Request
    , globalPublicDelegatedPrefixesInsert
    , GlobalPublicDelegatedPrefixesInsert

    -- * Request Lenses
    , gpdpiRequestId
    , gpdpiProject
    , gpdpiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.globalPublicDelegatedPrefixes.insert@ method which the
-- 'GlobalPublicDelegatedPrefixesInsert' request conforms to.
type GlobalPublicDelegatedPrefixesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "publicDelegatedPrefixes" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PublicDelegatedPrefix :>
                       Post '[JSON] Operation

-- | Creates a global PublicDelegatedPrefix in the specified project using
-- the parameters that are included in the request.
--
-- /See:/ 'globalPublicDelegatedPrefixesInsert' smart constructor.
data GlobalPublicDelegatedPrefixesInsert =
  GlobalPublicDelegatedPrefixesInsert'
    { _gpdpiRequestId :: !(Maybe Text)
    , _gpdpiProject :: !Text
    , _gpdpiPayload :: !PublicDelegatedPrefix
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GlobalPublicDelegatedPrefixesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gpdpiRequestId'
--
-- * 'gpdpiProject'
--
-- * 'gpdpiPayload'
globalPublicDelegatedPrefixesInsert
    :: Text -- ^ 'gpdpiProject'
    -> PublicDelegatedPrefix -- ^ 'gpdpiPayload'
    -> GlobalPublicDelegatedPrefixesInsert
globalPublicDelegatedPrefixesInsert pGpdpiProject_ pGpdpiPayload_ =
  GlobalPublicDelegatedPrefixesInsert'
    { _gpdpiRequestId = Nothing
    , _gpdpiProject = pGpdpiProject_
    , _gpdpiPayload = pGpdpiPayload_
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
gpdpiRequestId :: Lens' GlobalPublicDelegatedPrefixesInsert (Maybe Text)
gpdpiRequestId
  = lens _gpdpiRequestId
      (\ s a -> s{_gpdpiRequestId = a})

-- | Project ID for this request.
gpdpiProject :: Lens' GlobalPublicDelegatedPrefixesInsert Text
gpdpiProject
  = lens _gpdpiProject (\ s a -> s{_gpdpiProject = a})

-- | Multipart request metadata.
gpdpiPayload :: Lens' GlobalPublicDelegatedPrefixesInsert PublicDelegatedPrefix
gpdpiPayload
  = lens _gpdpiPayload (\ s a -> s{_gpdpiPayload = a})

instance GoogleRequest
           GlobalPublicDelegatedPrefixesInsert
         where
        type Rs GlobalPublicDelegatedPrefixesInsert =
             Operation
        type Scopes GlobalPublicDelegatedPrefixesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient
          GlobalPublicDelegatedPrefixesInsert'{..}
          = go _gpdpiProject _gpdpiRequestId (Just AltJSON)
              _gpdpiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy GlobalPublicDelegatedPrefixesInsertResource)
                      mempty
