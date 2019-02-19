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
-- Module      : Network.Google.Resource.DNS.Projects.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Fetch the representation of an existing Project.
--
-- /See:/ <https://developers.google.com/cloud-dns Google Cloud DNS API Reference> for @dns.projects.get@.
module Network.Google.Resource.DNS.Projects.Get
    (
    -- * REST Resource
      ProjectsGetResource

    -- * Creating a Request
    , projectsGet
    , ProjectsGet

    -- * Request Lenses
    , pgProject
    , pgClientOperationId
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @dns.projects.get@ method which the
-- 'ProjectsGet' request conforms to.
type ProjectsGetResource =
     "dns" :>
       "v2beta1" :>
         "projects" :>
           Capture "project" Text :>
             QueryParam "clientOperationId" Text :>
               QueryParam "alt" AltJSON :> Get '[JSON] Project

-- | Fetch the representation of an existing Project.
--
-- /See:/ 'projectsGet' smart constructor.
data ProjectsGet =
  ProjectsGet'
    { _pgProject           :: !Text
    , _pgClientOperationId :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgProject'
--
-- * 'pgClientOperationId'
projectsGet
    :: Text -- ^ 'pgProject'
    -> ProjectsGet
projectsGet pPgProject_ =
  ProjectsGet' {_pgProject = pPgProject_, _pgClientOperationId = Nothing}

-- | Identifies the project addressed by this request.
pgProject :: Lens' ProjectsGet Text
pgProject
  = lens _pgProject (\ s a -> s{_pgProject = a})

-- | For mutating operation requests only. An optional identifier specified
-- by the client. Must be unique for operation resources in the Operations
-- collection.
pgClientOperationId :: Lens' ProjectsGet (Maybe Text)
pgClientOperationId
  = lens _pgClientOperationId
      (\ s a -> s{_pgClientOperationId = a})

instance GoogleRequest ProjectsGet where
        type Rs ProjectsGet = Project
        type Scopes ProjectsGet =
             '["https://www.googleapis.com/auth/cloud-platform",
               "https://www.googleapis.com/auth/cloud-platform.read-only",
               "https://www.googleapis.com/auth/ndev.clouddns.readonly",
               "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
        requestClient ProjectsGet'{..}
          = go _pgProject _pgClientOperationId (Just AltJSON)
              dNSService
          where go
                  = buildClient (Proxy :: Proxy ProjectsGetResource)
                      mempty
