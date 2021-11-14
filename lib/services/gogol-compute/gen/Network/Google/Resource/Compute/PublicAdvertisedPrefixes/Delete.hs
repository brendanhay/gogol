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
-- Module      : Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified PublicAdvertisedPrefix
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.publicAdvertisedPrefixes.delete@.
module Network.Google.Resource.Compute.PublicAdvertisedPrefixes.Delete
    (
    -- * REST Resource
      PublicAdvertisedPrefixesDeleteResource

    -- * Creating a Request
    , publicAdvertisedPrefixesDelete
    , PublicAdvertisedPrefixesDelete

    -- * Request Lenses
    , papdRequestId
    , papdPublicAdvertisedPrefix
    , papdProject
    ) where

import Network.Google.Compute.Types
import Network.Google.Prelude

-- | A resource alias for @compute.publicAdvertisedPrefixes.delete@ method which the
-- 'PublicAdvertisedPrefixesDelete' request conforms to.
type PublicAdvertisedPrefixesDeleteResource =
     "compute" :>
       "v1" :>
         "projects" :>
           Capture "project" Text :>
             "global" :>
               "publicAdvertisedPrefixes" :>
                 Capture "publicAdvertisedPrefix" Text :>
                   QueryParam "requestId" Text :>
                     QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified PublicAdvertisedPrefix
--
-- /See:/ 'publicAdvertisedPrefixesDelete' smart constructor.
data PublicAdvertisedPrefixesDelete =
  PublicAdvertisedPrefixesDelete'
    { _papdRequestId :: !(Maybe Text)
    , _papdPublicAdvertisedPrefix :: !Text
    , _papdProject :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublicAdvertisedPrefixesDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'papdRequestId'
--
-- * 'papdPublicAdvertisedPrefix'
--
-- * 'papdProject'
publicAdvertisedPrefixesDelete
    :: Text -- ^ 'papdPublicAdvertisedPrefix'
    -> Text -- ^ 'papdProject'
    -> PublicAdvertisedPrefixesDelete
publicAdvertisedPrefixesDelete pPapdPublicAdvertisedPrefix_ pPapdProject_ =
  PublicAdvertisedPrefixesDelete'
    { _papdRequestId = Nothing
    , _papdPublicAdvertisedPrefix = pPapdPublicAdvertisedPrefix_
    , _papdProject = pPapdProject_
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
papdRequestId :: Lens' PublicAdvertisedPrefixesDelete (Maybe Text)
papdRequestId
  = lens _papdRequestId
      (\ s a -> s{_papdRequestId = a})

-- | Name of the PublicAdvertisedPrefix resource to delete.
papdPublicAdvertisedPrefix :: Lens' PublicAdvertisedPrefixesDelete Text
papdPublicAdvertisedPrefix
  = lens _papdPublicAdvertisedPrefix
      (\ s a -> s{_papdPublicAdvertisedPrefix = a})

-- | Project ID for this request.
papdProject :: Lens' PublicAdvertisedPrefixesDelete Text
papdProject
  = lens _papdProject (\ s a -> s{_papdProject = a})

instance GoogleRequest PublicAdvertisedPrefixesDelete
         where
        type Rs PublicAdvertisedPrefixesDelete = Operation
        type Scopes PublicAdvertisedPrefixesDelete =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/compute"]
        requestClient PublicAdvertisedPrefixesDelete'{..}
          = go _papdProject _papdPublicAdvertisedPrefix
              _papdRequestId
              (Just AltJSON)
              computeService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy PublicAdvertisedPrefixesDeleteResource)
                      mempty
