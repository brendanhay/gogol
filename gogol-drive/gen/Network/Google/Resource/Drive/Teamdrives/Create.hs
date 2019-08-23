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
-- Module      : Network.Google.Resource.Drive.Teamdrives.Create
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deprecated use drives.create instead.
--
-- /See:/ <https://developers.google.com/drive/ Drive API Reference> for @drive.teamdrives.create@.
module Network.Google.Resource.Drive.Teamdrives.Create
    (
    -- * REST Resource
      TeamdrivesCreateResource

    -- * Creating a Request
    , teamdrivesCreate
    , TeamdrivesCreate

    -- * Request Lenses
    , tcRequestId
    , tcPayload
    ) where

import           Network.Google.Drive.Types
import           Network.Google.Prelude

-- | A resource alias for @drive.teamdrives.create@ method which the
-- 'TeamdrivesCreate' request conforms to.
type TeamdrivesCreateResource =
     "drive" :>
       "v3" :>
         "teamdrives" :>
           QueryParam "requestId" Text :>
             QueryParam "alt" AltJSON :>
               ReqBody '[JSON] TeamDrive :> Post '[JSON] TeamDrive

-- | Deprecated use drives.create instead.
--
-- /See:/ 'teamdrivesCreate' smart constructor.
data TeamdrivesCreate =
  TeamdrivesCreate'
    { _tcRequestId :: !Text
    , _tcPayload   :: !TeamDrive
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TeamdrivesCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcRequestId'
--
-- * 'tcPayload'
teamdrivesCreate
    :: Text -- ^ 'tcRequestId'
    -> TeamDrive -- ^ 'tcPayload'
    -> TeamdrivesCreate
teamdrivesCreate pTcRequestId_ pTcPayload_ =
  TeamdrivesCreate' {_tcRequestId = pTcRequestId_, _tcPayload = pTcPayload_}


-- | An ID, such as a random UUID, which uniquely identifies this user\'s
-- request for idempotent creation of a Team Drive. A repeated request by
-- the same user and with the same request ID will avoid creating
-- duplicates by attempting to create the same Team Drive. If the Team
-- Drive already exists a 409 error will be returned.
tcRequestId :: Lens' TeamdrivesCreate Text
tcRequestId
  = lens _tcRequestId (\ s a -> s{_tcRequestId = a})

-- | Multipart request metadata.
tcPayload :: Lens' TeamdrivesCreate TeamDrive
tcPayload
  = lens _tcPayload (\ s a -> s{_tcPayload = a})

instance GoogleRequest TeamdrivesCreate where
        type Rs TeamdrivesCreate = TeamDrive
        type Scopes TeamdrivesCreate =
             '["https://www.googleapis.com/auth/drive"]
        requestClient TeamdrivesCreate'{..}
          = go (Just _tcRequestId) (Just AltJSON) _tcPayload
              driveService
          where go
                  = buildClient
                      (Proxy :: Proxy TeamdrivesCreateResource)
                      mempty
