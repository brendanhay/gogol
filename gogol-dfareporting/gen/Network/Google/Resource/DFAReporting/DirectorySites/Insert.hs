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
-- Module      : Network.Google.Resource.DFAReporting.DirectorySites.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new directory site.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingDirectorySitesInsert@.
module Network.Google.Resource.DFAReporting.DirectorySites.Insert
    (
    -- * REST Resource
      DirectorySitesInsertResource

    -- * Creating a Request
    , directorySitesInsert'
    , DirectorySitesInsert'

    -- * Request Lenses
    , dsiProFileId
    , dsiPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingDirectorySitesInsert@ method which the
-- 'DirectorySitesInsert'' request conforms to.
type DirectorySitesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "directorySites" :>
           QueryParam "alt" AltJSON :>
             ReqBody '[JSON] DirectorySite :>
               Post '[JSON] DirectorySite

-- | Inserts a new directory site.
--
-- /See:/ 'directorySitesInsert'' smart constructor.
data DirectorySitesInsert' = DirectorySitesInsert'
    { _dsiProFileId :: !Int64
    , _dsiPayload   :: !DirectorySite
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DirectorySitesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsiProFileId'
--
-- * 'dsiPayload'
directorySitesInsert'
    :: Int64 -- ^ 'profileId'
    -> DirectorySite -- ^ 'payload'
    -> DirectorySitesInsert'
directorySitesInsert' pDsiProFileId_ pDsiPayload_ =
    DirectorySitesInsert'
    { _dsiProFileId = pDsiProFileId_
    , _dsiPayload = pDsiPayload_
    }

-- | User profile ID associated with this request.
dsiProFileId :: Lens' DirectorySitesInsert' Int64
dsiProFileId
  = lens _dsiProFileId (\ s a -> s{_dsiProFileId = a})

-- | Multipart request metadata.
dsiPayload :: Lens' DirectorySitesInsert' DirectorySite
dsiPayload
  = lens _dsiPayload (\ s a -> s{_dsiPayload = a})

instance GoogleRequest DirectorySitesInsert' where
        type Rs DirectorySitesInsert' = DirectorySite
        requestClient DirectorySitesInsert'{..}
          = go _dsiProFileId (Just AltJSON) _dsiPayload
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy DirectorySitesInsertResource)
                      mempty
