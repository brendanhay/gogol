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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Inserts a new site.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ DCM/DFA Reporting And Trafficking API Reference> for @dfareporting.sites.insert@.
module Network.Google.Resource.DFAReporting.Sites.Insert
    (
    -- * REST Resource
      SitesInsertResource

    -- * Creating a Request
    , sitesInsert
    , SitesInsert

    -- * Request Lenses
    , sProFileId
    , sPayload
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @dfareporting.sites.insert@ method which the
-- 'SitesInsert' request conforms to.
type SitesInsertResource =
     "dfareporting" :>
       "v2.6" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "sites" :>
               QueryParam "alt" AltJSON :>
                 ReqBody '[JSON] Site :> Post '[JSON] Site

-- | Inserts a new site.
--
-- /See:/ 'sitesInsert' smart constructor.
data SitesInsert = SitesInsert'
    { _sProFileId :: !(Textual Int64)
    , _sPayload   :: !Site
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sProFileId'
--
-- * 'sPayload'
sitesInsert
    :: Int64 -- ^ 'sProFileId'
    -> Site -- ^ 'sPayload'
    -> SitesInsert
sitesInsert pSProFileId_ pSPayload_ =
    SitesInsert'
    { _sProFileId = _Coerce # pSProFileId_
    , _sPayload = pSPayload_
    }

-- | User profile ID associated with this request.
sProFileId :: Lens' SitesInsert Int64
sProFileId
  = lens _sProFileId (\ s a -> s{_sProFileId = a}) .
      _Coerce

-- | Multipart request metadata.
sPayload :: Lens' SitesInsert Site
sPayload = lens _sPayload (\ s a -> s{_sPayload = a})

instance GoogleRequest SitesInsert where
        type Rs SitesInsert = Site
        type Scopes SitesInsert =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient SitesInsert'{..}
          = go _sProFileId (Just AltJSON) _sPayload
              dFAReportingService
          where go
                  = buildClient (Proxy :: Proxy SitesInsertResource)
                      mempty
