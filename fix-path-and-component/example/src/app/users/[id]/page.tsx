import Explosion from "@/app/utils/dangers/explosions";
import { Revision } from "@/app/utils/revisions/revision";

const UserPage = () => {
  return (
    <div>
      <p>User用のページ</p>
      <Explosion />
      <Revision />
    </div>
  )
}

export default UserPage;
