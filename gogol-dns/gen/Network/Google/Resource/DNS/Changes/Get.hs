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
-- Module      : Network.Google.Resource.DNS.Changes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the representation of an existing Change.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.changes.get@.
module Network.Google.Resource.DNS.Changes.Get
    (
    -- * REST Resource
      ChangesGetResource

    -- * Creating a Request
    , changesGet
    , ChangesGet

    -- * Request Lenses
    , cgProject
    , cgChangeId
    , cgManagedZone
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @dns.changes.get@ method which the
-- 'ChangesGet' request conforms to.
type ChangesGetResource =
     Capture "project" Text :>
       "managedZones" :>
         Capture "managedZone" Text :>
           "changes" :>
             Capture "changeId" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Change

-- | Fetch the representation of an existing Change.
--
-- /See:/ 'changesGet' smart constructor.
data ChangesGet = ChangesGet
    { _cgProject     :: !Text
    , _cgChangeId    :: !Text
    , _cgManagedZone :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ChangesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cgProject'
--
-- * 'cgChangeId'
--
-- * 'cgManagedZone'
changesGet
    :: Text -- ^ 'cgProject'
    -> Text -- ^ 'cgChangeId'
    -> Text -- ^ 'cgManagedZone'
    -> ChangesGet
changesGet pCgProject_ pCgChangeId_ pCgManagedZone_ =
    ChangesGet
    { _cgProject = pCgProject_
    , _cgChangeId = pCgChangeId_
    , _cgManagedZone = pCgManagedZone_
    }

-- | Identifies the project addressed by this request.
cgProject :: Lens' ChangesGet Text
cgProject
  = lens _cgProject (\ s a -> s{_cgProject = a})

-- | The identifier of the requested change, from a previous
-- ResourceRecordSetsChangeResponse.
cgChangeId :: Lens' ChangesGet Text
cgChangeId
  = lens _cgChangeId (\ s a -> s{_cgChangeId = a})

-- | Identifies the managed zone addressed by this request. Can be the
-- managed zone name or id.
cgManagedZone :: Lens' ChangesGet Text
cgManagedZone
  = lens _cgManagedZone
      (\ s a -> s{_cgManagedZone = a})

instance GoogleRequest ChangesGet where
        type Rs ChangesGet = Change
        requestClient ChangesGet{..}
          = go _cgProject _cgManagedZone _cgChangeId
              (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy ChangesGetResource)
                      mempty
