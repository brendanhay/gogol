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
-- Copyright   : (c) 2015 Brendan Hay
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
    ) where

import           Network.Google.DNS.Types
import           Network.Google.Prelude

-- | A resource alias for @dns.projects.get@ method which the
-- 'ProjectsGet' request conforms to.
type ProjectsGetResource =
     Capture "project" Text :>
       QueryParam "alt" AltJSON :> Get '[JSON] Project

-- | Fetch the representation of an existing Project.
--
-- /See:/ 'projectsGet' smart constructor.
newtype ProjectsGet = ProjectsGet
    { _pgProject :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ProjectsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgProject'
projectsGet
    :: Text -- ^ 'pgProject'
    -> ProjectsGet
projectsGet pPgProject_ =
    ProjectsGet
    { _pgProject = pPgProject_
    }

-- | Identifies the project addressed by this request.
pgProject :: Lens' ProjectsGet Text
pgProject
  = lens _pgProject (\ s a -> s{_pgProject = a})

instance GoogleRequest ProjectsGet where
        type Rs ProjectsGet = Project
        requestClient ProjectsGet{..}
          = go _pgProject (Just AltJSON) dNSService
          where go
                  = buildClient (Proxy :: Proxy ProjectsGetResource)
                      mempty
