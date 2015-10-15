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
-- Module      : Network.Google.Resource.DFAReporting.Sites.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Updates an existing site. This method supports patch semantics.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSitesPatch@.
module Network.Google.Resource.DFAReporting.Sites.Patch
    (
    -- * REST Resource
      SitesPatchResource

    -- * Creating a Request
    , sitesPatch'
    , SitesPatch'

    -- * Request Lenses
    , spProFileId
    , spPayload
    , spId
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSitesPatch@ method which the
-- 'SitesPatch'' request conforms to.
type SitesPatchResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sites" :>
           QueryParam "id" Int64 :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] Site :> Patch '[JSON] Site

-- | Updates an existing site. This method supports patch semantics.
--
-- /See:/ 'sitesPatch'' smart constructor.
data SitesPatch' = SitesPatch'
    { _spProFileId :: !Int64
    , _spPayload   :: !Site
    , _spId        :: !Int64
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SitesPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'spProFileId'
--
-- * 'spPayload'
--
-- * 'spId'
sitesPatch'
    :: Int64 -- ^ 'profileId'
    -> Site -- ^ 'payload'
    -> Int64 -- ^ 'id'
    -> SitesPatch'
sitesPatch' pSpProFileId_ pSpPayload_ pSpId_ =
    SitesPatch'
    { _spProFileId = pSpProFileId_
    , _spPayload = pSpPayload_
    , _spId = pSpId_
    }

-- | User profile ID associated with this request.
spProFileId :: Lens' SitesPatch' Int64
spProFileId
  = lens _spProFileId (\ s a -> s{_spProFileId = a})

-- | Multipart request metadata.
spPayload :: Lens' SitesPatch' Site
spPayload
  = lens _spPayload (\ s a -> s{_spPayload = a})

-- | Site ID.
spId :: Lens' SitesPatch' Int64
spId = lens _spId (\ s a -> s{_spId = a})

instance GoogleRequest SitesPatch' where
        type Rs SitesPatch' = Site
        requestClient SitesPatch'{..}
          = go _spProFileId (Just _spId) (Just AltJSON)
              _spPayload
              dFAReporting
          where go
                  = buildClient (Proxy :: Proxy SitesPatchResource)
                      mempty
