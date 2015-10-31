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
-- Module      : Network.Google.Resource.DFAReporting.DirectorySites.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets one directory site by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.directorySites.get@.
module Network.Google.Resource.DFAReporting.DirectorySites.Get
    (
    -- * REST Resource
      DirectorySitesGetResource

    -- * Creating a Request
    , directorySitesGet
    , DirectorySitesGet

    -- * Request Lenses
    , dsgProFileId
    , dsgId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.directorySites.get@ method which the
-- 'DirectorySitesGet' request conforms to.
type DirectorySitesGetResource =
     "dfareporting" :>
       "v2.4" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "directorySites" :>
               Capture "id" (Textual Int64) :>
                 QueryParam "alt" AltJSON :> Get '[JSON] DirectorySite

-- | Gets one directory site by ID.
--
-- /See:/ 'directorySitesGet' smart constructor.
data DirectorySitesGet = DirectorySitesGet
    { _dsgProFileId :: !(Textual Int64)
    , _dsgId        :: !(Textual Int64)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySitesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsgProFileId'
--
-- * 'dsgId'
directorySitesGet
    :: Int64 -- ^ 'dsgProFileId'
    -> Int64 -- ^ 'dsgId'
    -> DirectorySitesGet
directorySitesGet pDsgProFileId_ pDsgId_ =
    DirectorySitesGet
    { _dsgProFileId = _Coerce # pDsgProFileId_
    , _dsgId = _Coerce # pDsgId_
    }

-- | User profile ID associated with this request.
dsgProFileId :: Lens' DirectorySitesGet Int64
dsgProFileId
  = lens _dsgProFileId (\ s a -> s{_dsgProFileId = a})
      . _Coerce

-- | Directory site ID.
dsgId :: Lens' DirectorySitesGet Int64
dsgId
  = lens _dsgId (\ s a -> s{_dsgId = a}) . _Coerce

instance GoogleRequest DirectorySitesGet where
        type Rs DirectorySitesGet = DirectorySite
        type Scopes DirectorySitesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient DirectorySitesGet{..}
          = go _dsgProFileId _dsgId (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DirectorySitesGetResource)
                      mempty
