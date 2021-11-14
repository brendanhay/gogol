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
-- Module      : Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a PublicAdvertisedPrefix in the specified project using the
-- parameters that are included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.publicAdvertisedPrefixes.insert@.
module Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Insert
    (
    -- * REST Resource
      PublicAdvertisedPrefixesInsertResource

    -- * Creating a Request
    , publicAdvertisedPrefixesInsert
    , PublicAdvertisedPrefixesInsert

    -- * Request Lenses
    , papiRequestId
    , papiProject
    , papiPayload
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.publicAdvertisedPrefixes.insert@ method which the
-- 'PublicAdvertisedPrefixesInsert' request conforms to.
type PublicAdvertisedPrefixesInsertResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "publicAdvertisedPrefixes" :>
                 QueryParam "requestId" Text :>
                   QueryParam "alt" AltJSON :>
                     ReqBody '[JSON] PublicAdvertisedPrefix :>
                       Post '[JSON] Operation

-- | Creates a PublicAdvertisedPrefix in the specified project using the
-- parameters that are included in the request.
--
-- /See:/ 'publicAdvertisedPrefixesInsert' smart constructor.
data PublicAdvertisedPrefixesInsert =
  PublicAdvertisedPrefixesInsert'
    { _papiRequestId :: !(Maybe Text)
    , _papiProject :: !Text
    , _papiPayload :: !PublicAdvertisedPrefix
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicAdvertisedPrefixesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'papiRequestId'
--
-- * 'papiProject'
--
-- * 'papiPayload'
publicAdvertisedPrefixesInsert
    :: Text -- ^ 'papiProject'
    -> PublicAdvertisedPrefix -- ^ 'papiPayload'
    -> PublicAdvertisedPrefixesInsert
publicAdvertisedPrefixesInsert pPapiProject_ pPapiPayload_ =
  PublicAdvertisedPrefixesInsert'
    { _papiRequestId = Nothing
    , _papiProject = pPapiProject_
    , _papiPayload = pPapiPayload_
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
papiRequestId :: Lens' PublicAdvertisedPrefixesInsert (Maybe Text)
papiRequestId
  = lens _papiRequestId
      (\ s a -> s{_papiRequestId = a})

-- | Project ID for this request.
papiProject :: Lens' PublicAdvertisedPrefixesInsert Text
papiProject
  = lens _papiProject (\ s a -> s{_papiProject = a})

-- | Multipart request metadata.
papiPayload :: Lens' PublicAdvertisedPrefixesInsert PublicAdvertisedPrefix
papiPayload
  = lens _papiPayload (\ s a -> s{_papiPayload = a})

instance GoogleRequest PublicAdvertisedPrefixesInsert
         where
        type Rs PublicAdvertisedPrefixesInsert = Operation
        type Scopes PublicAdvertisedPrefixesInsert =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient PublicAdvertisedPrefixesInsert'{..}
          = go _papiProject _papiRequestId (Just AltJSON)
              _papiPayload
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PublicAdvertisedPrefixesInsertResource)
                      mempty
